# Changelog

All notable changes to this **enhanced fork** of NugKeyFeedback are documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project aims to follow [Semantic Versioning](https://semver.org/).

> Base addon by **d87** · WotLK 3.3.5a backport by **s0h2x** · this fork adds the features below.

---

## [1.0.0-enhanced] - 2026-07-20

First public release of the enhanced fork. NugKeyFeedback now fires from **every** source,
shows the spell line only on **real, completed** actions, and turns the mirror into an
at‑a‑glance **cooldown readout** — all in a clean, optimized build.

### Added
- **Universal source support** — feedback from action bars, keybinds, bags, equipped items,
  `/use` macros, the Pet & Mount window, and gear equips (previously action‑bar only).
- **Cooldown display on the mirror** for spells, abilities, items, mounts, gear and enchants,
  from every source (the numeric countdown is drawn by OmniCC).
- **3‑second cooldown reveal delay** — see the clean icon of what you used before the cooldown
  clock/text appears; the global‑cooldown spin is naturally hidden and cast bars are unaffected.
- **Mount & companion support** with correct name → spell → icon resolution.
- **Gear‑equip feedback**, confirmed via inventory change and safe in combat.
- `## Version` and a rich, color‑coded `## Notes` in the TOC.

### Changed
- The mirror now refreshes its cooldown on **every** press, so an already‑running cooldown
  always shows when you press again.
- Action‑bar cooldown styling now matches the bag/item path for a consistent look.
- Rebuilt as a **clean, lightweight, optimized** addon: all debug logging, comments and dead
  code removed — verified behaviour‑identical.

### Fixed
- Feedback not appearing for bag / equipped / Pet & Mount window / gear uses.
- Spell line firing on cast **start** or on **failed** actions — it now appears only when a
  use/cast truly completes (no false icons from moving, combat, cooldown, cancelled targeting
  or out of range).
- The mirror's cooldown display was unreachable outside of an active cast.
- 3.3.5a `Cooldown` API error ("attempt to compare number with boolean") when using cast‑time
  items or mounts without an action‑bar slot.
- Spell‑line icons were parented to the hidden mirror and never rendered from non‑action
  sources; they now live on an always‑visible container.
- Redundant hooks double‑firing, and false triggers while a vendor / bank / mail / trade /
  auction / guild‑bank window is open.

### Removed
- The `/nkf debug` command and all debug logging (internal diagnostics no longer needed).

### Credits
- Original addon: **d87** · WotLK 3.3.5a backport: **s0h2x** · Recommended companion:
  **OmniCC** ([NoM0Re backport](https://github.com/NoM0Re/OmniCC-WotLK)).

<!-- Fill in your fork URL once published, e.g.:
[1.0.0-enhanced]: https://github.com/Freaky3P/NugKeyFeedback/releases/tag/v1.0.0-enhanced
-->
