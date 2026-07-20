<div align="center">

# ⌨️ NugKeyFeedback — Enhanced Edition

### FFXIV‑style key, spell & item feedback for **World of Warcraft 3.3.5a (WotLK)**

![Version](https://img.shields.io/badge/version-1.0.0--enhanced-8a2be2)
![WoW](https://img.shields.io/badge/WoW-3.3.5a%20WotLK-8b0000)
![Interface](https://img.shields.io/badge/Interface-30300-blue)
![Lua](https://img.shields.io/badge/Lua-5.1-000080)
![Type](https://img.shields.io/badge/type-fork-2ea44f)
![Status](https://img.shields.io/badge/status-stable-brightgreen)

*A big, satisfying **mirror** of whatever you just used flashes on screen, followed by a sliding line of your recent casts — now firing from **every** source in the game, with a smart, delayed cooldown readout.*

![NugKeyFeedback demo](https://i.imgur.com/rtETOO4.gif)

</div>

---

## 📖 What is this?

**NugKeyFeedback** gives you clean, game‑feel visual feedback every time you press a key or use something:

- 🪞 a **Mirror** — a large copy of the ability/spell/item you just triggered, complete with cast bar, cooldown swipe and a juicy FF14‑style press animation, and
- ➡️ a **Spell Line** — a row of your recent casts that slide across and fade away.

This is a **fork** of [**s0h2x**'s WotLK 3.3.5a backport](https://github.com/s0h2x/NugKeyFeedback) of **d87**'s original *NugKeyFeedback*. The goal of this fork: make the feedback fire from **everywhere** (not just action bars), show it **only when something really happens**, and add a genuinely useful **cooldown readout** on the mirror.

---

## ⭐ Why this fork?

> The original only reacted to **action‑bar key presses**. If you used a Hearthstone, food, a potion, a mount, or a trinket straight from your **bags** or the **Pet & Mount window**, nothing showed up.

This fork rebuilds the detection so feedback works from **every** way you can use something in‑game, only fires on **real, successful** actions, and turns the mirror into an at‑a‑glance **cooldown display**.

| | Original | ✅ This fork |
|---|---|---|
| Action bars & keybinds | ✔️ | ✔️ |
| Bag items (Hearthstone, food, potions, flasks…) | ❌ | ✔️ |
| Equipped on‑use items (trinkets…) | ❌ | ✔️ |
| `/use` macros | ❌ | ✔️ |
| Pet & Mount window (mounts / companions) | ❌ | ✔️ |
| Gear equips | ❌ | ✔️ |
| Spell‑line only on a **completed** use/cast | ❌ | ✔️ |
| Cooldown clock & text on the mirror | partial | ✔️ (all sources) |
| Delayed cooldown reveal (see the icon first) | ❌ | ✔️ |

---

## 🎮 Features

### 🧱 Core (by d87 · WotLK backport by s0h2x)
- 🪞 **Mirror** of the action you pressed, with **cast bar**, **cooldown swipe** and a **cast flash** glow on success
- 💥 **FF14‑style push animation** (expanding ring on press)
- ➡️ **Spell Line** of recent casts that scales in, slides and fades — direction of your choice
- 🎨 **Masque** skinning support
- 🤝 Plays nicely with **Bartender4 / Neuron / ElvUI** (auto‑detected hook mode)
- 🖱️ **Movable** anchor + a full in‑game **options panel**

### 🚀 New & improved in this fork
- 🌐 **Universal source support** — feedback now fires from **action bars, keybinds, bags, equipped items, `/use` macros, the Pet & Mount window, and gear equips**.
- 🎯 **Accurate spell‑line timing** — the mirror shows your *attempt* instantly, but the sliding line icon appears **only on a real, successful use/cast**:
  - Instant abilities/items → line on success.
  - Cast‑time actions (Hearthstone, food, drink, mounts, cast spells) → line waits for the cast to **finish**.
  - Failed actions (moving, in combat, on cooldown, cancelled targeting, out of range) → **no false icon**.
- 🧳 **Gear equip feedback** — equipping gear registers on the line only when the swap actually succeeds; blocked in combat, so it stays mirror‑only there.
- 🐎 **Mount & companion support** — proper name→spell→icon resolution so mounts show correctly from any source.
- ⏱️ **Cooldown on the mirror for everything** — remaining cooldown (swipe **+ number**) now shows for spells, abilities, items, mounts, gear & enchants, from every source.
- ⌛ **3‑second cooldown reveal delay** — right after you use something the mirror shows the **clean icon** so you can see what it was; the cooldown clock/text fades in after 3s. (Also quietly hides the global‑cooldown spin.)
- 🧯 **Robustness fixes** — hook de‑duplication, ignores "use" while a vendor/bank/mail/trade/auction/guild‑bank window is open, corrected the 3.3.5a cooldown API call, and moved the spell‑line to an always‑visible container so it renders from non‑action sources.
- 🧼 **Clean, optimized, lightweight build** — all debug code and comments stripped, dead code removed, verified behaviour‑identical.

---

## 🧩 Recommended companion: OmniCC

The mirror feeds the cooldown to a **standard cooldown frame** — the numeric countdown itself is drawn by a cooldown‑text addon. For the best experience use **[OmniCC (WotLK 3.3.5a backport by NoM0Re)](https://github.com/NoM0Re/OmniCC-WotLK)**.

> 💡 The short **global cooldown** shows only as a quick radial sweep (OmniCC won't put a number on it), while real cooldowns display the countdown. If you ever want to hide short sweeps entirely, tune OmniCC's minimum‑duration setting.

---

## ⚙️ Options — `/nkf` or `/nugkeyfeedback`

| Option | What it does |
|---|---|
| **Button Size** | Size of the mirror icon |
| **Show Cooldown** | Cooldown swipe/clock on the mirror |
| **Show Cast Time** | Cast progress sweep on the mirror |
| **FF14 Push Effect** | Expanding ring animation on press |
| **Cast Line** | Enable/disable the sliding spell line |
| **Cast Flash** | Glow flash on a successful cast |
| **Cast Line Icon Size** | Size of the spell‑line icons |
| **Cast Line Direction** | Up / Left / Right / Down |
| **Force UseAction hook** | Alternate hook mode for some action‑bar addons |
| **Unlock / Lock** | Move the anchor, then lock it in place |

---

## 📥 Installation

1. Download this fork (**Code → Download ZIP**, or a release).
2. Copy the **`NugKeyFeedback`** folder into:
   ```
   World of Warcraft\Interface\AddOns\
   ```
3. Make sure you end up with `Interface\AddOns\NugKeyFeedback\NugKeyFeedback.toc`.
4. (Recommended) Install **OmniCC** for cooldown numbers.
5. Launch the game, enable the addon on the character screen, and type **`/nkf`** to configure.

---

## 🗺️ The journey (what changed, step by step)

> 📄 For a concise, versioned history, see **[CHANGELOG.md](CHANGELOG.md)**.

<details>
<summary><b>Click to expand the full development log</b></summary>

**Making it work from every source (V1 → V9)**
- Diagnosed that feedback only fired for action‑bar key presses; bag/equipped/pet‑window uses were invisible.
- Added source‑agnostic hooks: bags, equipped slots, action bars, `/use` macros and the Pet & Mount window.
- Split behaviour into **attempt** (mirror, instant) vs **success** (spell line): the line now appears only when an action truly goes off.
- Cast‑time actions (Hearthstone, food, drink, mounts, cast spells) defer their line icon to **cast completion**.
- Added mount/companion resolution (learned mounts + a large static mount‑spell table).
- Added **gear‑equip** feedback via inventory‑change confirmation (combat‑safe).
- Fixed failed‑use cases (movement, combat, cooldown, cancelled targeting) so they never leave a false icon.
- Added hook de‑duplication and a vendor/bank/mail/trade/auction guard.
- Fixed a 3.3.5a `Cooldown` API error (number vs boolean) and moved spell‑line icons off the hidden mirror so they always render.

**Clean build**
- Stripped all debug logging, the `/nkf debug` command, every comment and dead code — verified byte‑for‑byte behaviour‑identical, just lighter.

**Cooldown on the mirror**
- Fixed the condition that made the mirror's cooldown display unreachable outside of casts — remaining cooldowns now show for **every** source, and mounts / `/use` macros pass their cooldowns too.

**Delayed cooldown reveal**
- Added a **3‑second** delay (age‑based) so you always see the clean icon of what you used before the cooldown clock/text appears — perfect for button spamming.

</details>

---

## 🙏 Credits

- **d87** — original *NugKeyFeedback*.
- **[s0h2x](https://github.com/s0h2x/NugKeyFeedback)** — WotLK 3.3.5a backport ([Discord](https://discord.gg/xpmAYHdzAm)).
- **This fork** — universal‑source feedback, accurate spell‑line timing, cooldown display & delay, and cleanup.
- **[NoM0Re](https://github.com/NoM0Re/OmniCC-WotLK)** — OmniCC 3.3.5a backport (recommended companion).

## 📄 License

This fork inherits the terms of the upstream project and preserves all original authorship. All credit for the base addon goes to **d87**, and to **s0h2x** for the WotLK backport.
