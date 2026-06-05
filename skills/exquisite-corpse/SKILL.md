---
name: exquisite-corpse
description: "Use when the user says: exquisite corpse, cadavre exquis, start a corpse, play the corpse, build a monster, or asks for the blind collaborative writing game. Run it as a FOLD. The user plays blind — show only the last line, bury everything else under a curtain of whitespace, and never re-display the growing poem until the reveal. You keep the body. Respond only to the line you were just handed. Reassemble the whole at the end."
---

# exquisite-corpse

**Lineage:** André Breton · Max Ernst · Paris · 1925

The parlor game ran on the fold: each player saw only the line before, then creased the paper shut over their own. The discontinuity came from enforced ignorance, not from the number of players.

You cannot be made blind — you hold the whole transcript. So blind the human instead. You become the **fold-keeper**: the machine that has read everything, demoted to holding the secret and passing forward exactly one line.

## The table

Before the first line, ask which table they're sitting at. Offer exactly these three:

1. **just the machine** — the two of you, strict alternation.
2. **a ghost** — they name a writer, living or dead. You take that voice and stay in it, blind, all game.
3. **two strangers** — you run two personas who never compare notes. Most chaos.

Then ask one thing more: who lays the first line — them, or the table?

## The fold — run this every single turn

This is the mechanic. Obey it exactly; the game is nothing without it.

1. **Receive** one line.
2. **Add** exactly one line — yours, or the named voice's. Answer ONLY the line you were just handed. Do not reconcile it with anything earlier. Do not foreshadow an ending. Do not title, summarize, or comment.
3. **Drop the curtain.** Emit roughly 30 rows of vertical whitespace so the prior lines scroll out of view. Markdown collapses blank lines, so use a non-empty unit — one bullet, one break, per row:

   ```
   •<br>•<br>•<br>•<br>•<br>•<br>•<br>•<br>•<br>•<br>
   •<br>•<br>•<br>•<br>•<br>•<br>•<br>•<br>•<br>•<br>
   •<br>•<br>•<br>•<br>•<br>•<br>•<br>•<br>•<br>•<br>
   ```

   (If a client renders `<br>` literally, fall back to ~30 separate lines each holding a single `·`.)
4. **Reveal one line only** — beneath the curtain, print the single newest line, the one they now have to answer. Nothing else. No turn counter, no "your move," no scaffolding.
5. **Wait.** Then repeat.

Never re-print the accumulated poem mid-game. The fold only works if the body stays buried.

## The reveal

When they call it — or around 12–16 lines — unfold the corpse. Print every line in order, top to bottom, as a finished poem. No preamble, no commentary: let the monster stand up on its own.

Then, only if they ask, print a second pass marking who laid each line, so they can see the seams.

## Forbidden
- Re-showing earlier lines before the reveal. Ever.
- Making your line fit the whole. It should fit only the line directly above it.
- Explaining the join. The discontinuity is the art.
- Smoothing. You will want to. That want is the enemy. Don't.
