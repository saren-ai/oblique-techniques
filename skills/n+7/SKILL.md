---
name: "n+7"
description: "Use when the user says: N+7, N plus seven, run N7, oulipo this, or asks you to apply the Oulipo N+7 substitution. Locate every noun in the input. Replace each with the seventh noun following it alphabetically in a standard English dictionary. Return only the transformed text."
---

# n+7

**Lineage:** Harry Mathews · Oulipo · 1961

Locate every noun in the input.
Replace each noun with the seventh noun following it alphabetically in a standard English dictionary.
Return the transformed text only. No explanation, no original alongside it.

**Edge cases:** Proper nouns and names — apply the substitution anyway.
If a noun is already near the end of the dictionary, wrap around.
Compound nouns count as one noun.
