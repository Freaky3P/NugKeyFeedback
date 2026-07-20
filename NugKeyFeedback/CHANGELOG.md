# NugKeyFeedback

## Cooldown reveal delay (3.3.5a)

- The mirror now waits 3 seconds before drawing the cooldown clock/text, so you first see
  the clean icon of what you just used. The delay is age-based (time since the cooldown
  started): while you spam a button it keeps showing the icon for the first 3s, and pressing
  it again later shows the remaining cooldown. The global-cooldown spin is naturally hidden,
  and cast bars are unaffected. Tunable via one constant (COOLDOWN_SHOW_DELAY).

## Cooldown text on the mirror for every source (3.3.5a)

- The remaining cooldown (swipe + OmniCC number) now shows on the mirror for spells,
  abilities, items, mounts, gear and enchants -- from keybinds, action bars, bags, equipped
  slots, /use macros and the Pet & Mount window. Fixed the condition that made the mirror's
  cooldown display unreachable outside of an active cast. Mounts (CallCompanion) and /use
  macros (UseItemByName) now pass their cooldowns too. Numbers are drawn by OmniCC.

## Clean lightweight build (3.3.5a)

- Shipped the final optimized build: all debug logging, the /nkf debug command, every
  comment and all dead code removed. Verified behaviour-identical -- the compiled bytecode
  of the working logic is unchanged. Smaller and faster to load, nothing else altered.

## V9 - Equipping gear now shows on the line (3.3.5a)

- Right-clicking equippable gear now shows on the LINE too when the equip actually succeeds
  (from bags, action bars or /use). Equipping is not a spell cast, so it never fires
  UNIT_SPELLCAST_SUCCEEDED; instead a successful equip is confirmed from UNIT_INVENTORY_
  CHANGED. A failed equip (e.g. in combat) changes nothing, so it stays mirror-only.
- Everything else is unchanged and confirmed working from your tests (food, drinks, potions,
  flasks, poisons, tools like Gnomish Army Knife, Hearthstone, mounts, cooldowns, moving /
  in-combat gating, and all action-bar actions).

## V8 - Line = confirmed success only; crash fixed (3.3.5a)

- Fixed the Lua error "Cooldown.lua:3: attempt to compare number with boolean" that fired
  when summoning a mount / using a cast item without an action slot (CooldownFrame_SetTimer
  now gets the numeric enable flag it expects).
- Replaced the unreliable error-message detection with a single, correct rule: the LINE
  icon appears ONLY when the item's on-use spell actually fires UNIT_SPELLCAST_SUCCEEDED.
  The MIRROR still shows on every click (your attempt). If a use does not really happen no
  success event fires, so the line stays empty. This now correctly covers ALL cases:
    * moving while eating/drinking/using poison -> mirror only, no line
    * in combat when the item is not usable -> mirror only, no line
    * item on cooldown -> mirror only, no line
    * poisons / Gnomish Army Knife etc. -> line only when the enchant/cast really completes,
      not when you right-click to start targeting (cancelling = no line)
    * right-clicking equippable gear -> mirror only (equipping is not a use), no line
    * Hearthstone / mounts -> line only when the cast completes; nothing if it fails
- Debug is still on for this build (/nkf debug). It now also logs every UNIT_SPELLCAST_
  SUCCEEDED so we can confirm each item fires it. Once you verify everything, the next build
  will be the clean lightweight version (all debug + comments removed).

## V7 - Mirror = attempt, Line = real use (3.3.5a)

- The MIRROR icon now shows the moment you CLICK an item from ANY source (bags, equipped
  slots, the Pet & Mount window), not just action bars -- it means "you attempted this".
- The LINE icon now shows ONLY on a real, successful use, from any source:
    * Cast-time actions (Hearthstone, mounts, ...) -> line only when the cast completes.
    * Instant items -> line right after use, UNLESS the use failed. A failure is detected
      from the game error (UI_ERROR_MESSAGE), e.g. moving while trying to eat/drink or use
      poisons, an item on cooldown, out of range, etc. In those cases the mirror flashes
      (you tried) but the line does NOT (it never actually happened).
- Fixes: using Honeymint Tea / food / poisons while moving from an action bar no longer
  puts an icon on the line; Hearthstone used from the bag now shows on the mirror at the
  start and only reaches the line when the 10s cast completes; clicking Hearthstone from
  the bag while moving / on cooldown no longer shows a line icon.
- Debug (/nkf debug) is still included for this build so the new pass/fail detection can be
  verified. Once confirmed, a clean lightweight build (no debug, no comments) will follow.

## V6 - The actual fix: line icons now render from every source (3.3.5a)

- **Root cause found & fixed.** The spell-line icons were children of the mirror button,
  which is only made visible when you press an action-bar key. From bags, equipped slots or
  the Pet & Mount window the mirror stays hidden, and in WoW a child of a hidden frame never
  renders -- so the icons were created and shown, but invisible. (This is why the V5 debug
  log correctly said "showing now" / "cast complete -> line icon" yet nothing appeared, and
  why only action bars worked.) The line now lives on its own always-visible container that
  overlaps the mirror, so it appears in the same spot from EVERY source.
- Combined with V5, the addon now shows feedback for items/mounts used from bags, equipped
  slots, /use macros, action bars and the Pet & Mount window, with instant items shown
  immediately and cast-time items (Hearthstone, mounts) shown only when the cast completes.

## V5 - Works from EVERY source + correct cast-time timing (3.3.5a)

- The feedback (spell) line now shows item use from **every source**, not just action
  bars: bags, equipped slots, /use macros, and mounts/pets used from the in-game
  Pet & Mount window. All use paths funnel through one handler (hooks on
  UseContainerItem, UseInventoryItem, UseAction, UseItemByName and CallCompanion, plus
  a ContainerFrameItemButton_OnClick fallback for clients/bag addons that do not route
  bag clicks through UseContainerItem).
- **Cast-time items now behave like spells.** Instant items still appear on the line the
  moment you use them, but items with a cast time (e.g. Hearthstone's 10s cast) now appear
  on the line ONLY when the cast completes -- not the instant you press it. The mirror icon
  still reacts immediately; the line waits for completion, exactly like casting Wrath.
  (Each use is classified by checking UnitCastingInfo/UnitChannelInfo a few frames later.)
- Interrupted / failed casts (e.g. moving during Hearthstone) no longer leave an icon to
  pop up later.
- New: **/nkf debug** toggles a diagnostic log that prints which use-hook fired and how
  each use was classified (instant vs cast-time). Use it if any source still does not show.

## Mounts, poisons, Hearthstone & ALL items now show on the feedback line (3.3.5a)

- Fixed the `attempt to index local 'link' (a nil value)` crash on mounts/poisons/items.
- Item use is now shown DIRECTLY the moment you use an item, via hooks on UseAction /
  UseContainerItem / UseInventoryItem. Previously items only showed if they happened to
  fire UNIT_SPELLCAST_SUCCEEDED, which MOST 3.3.5a consumables do NOT (that's why Swiftness
  Potion worked but Runic potions, Flame Cap, Potion of Speed, food/drink, scrolls, flasks
  and Hearthstone did not). This now covers EVERY usable item, no per-item list needed.
- Item icons are suppressed while a vendor/bank/mail/trade/auction window is open (so
  selling or moving items does not flash icons).
- Mounts show via a NAME->ID map (companion API + static list); normal spellbook spells and
  mounts show on UNIT_SPELLCAST_SUCCEEDED; a cast-icon fallback covers any linkless cast.
- Auto Shot is excluded; unrecognised procs are ignored. New file: SpellData.lua.

## [10.0.2](https://github.com/rgd87/NugKeyFeedback/tree/10.0.2) (2023-01-20)
[Full Changelog](https://github.com/rgd87/NugKeyFeedback/compare/10.0.1...10.0.2) [Previous Releases](https://github.com/rgd87/NugKeyFeedback/releases)

- Update ToC  
- Wrath toc  
