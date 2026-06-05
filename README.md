# Oblique Technique

The machine has read everything.
It has read Middlemarch and the Pepsi can and your ex's substack
and the entire archive of the Paris Review.
It has read more than you will ever read.
And it is very, very good at sounding like all of it at once.

Noam Chomsky called it a plagiarism machine.
He's not wrong.

---

The question isn't whether AI can be creative.
That argument is over and everyone lost.

The question is: what do you do with a machine
that defaults to the average of everything that's ever been written?

You don't argue with it.
You don't explain yourself to it.
You give it a constraint it wasn't built for
and see what comes out the other side.

That's what this is.

---

**Oblique Technique** is a collection of stratagems
for people who think the default output is the problem,
not the solution.

Not productivity tools.
Not prompt libraries.
Not AI magic tricks for your quarterly review.

Stratagems.
Calculated moves against a system that wants to give you
the most statistically likely next word.

---

## The collection

| stratagem | the move |
|---|---|
| [cut-up](./skills/cut-up/) | Slice. Recombine. Receive. |
| [n+7](./skills/n+7/) | Every noun replaced by its seventh dictionary successor. |
| [exquisite-corpse](./skills/exquisite-corpse/) | Each line sees only the line before it. The monster assembles itself. |
| [event-score](./skills/event-score/) | An instruction that may be impossible, quiet, or devastating. |
| [automatic-dispatch](./skills/automatic-dispatch/) | Follow the first image. Do not stop to think. |
| [détournement](./skills/détournement/) | Turn the text against itself using only its own vocabulary. |
| [queneau-machine](./skills/queneau-machine/) | Combinatorial. 10¹⁴ permutations. |
| [lipogram](./skills/lipogram/) | One letter permanently exiled. The gap is the point. |
| [dream-logic](./skills/dream-logic/) | One image implies the next. Stop at seven. |
| [oblique-interrupt](./skills/oblique-interrupt/) | When stuck: a constraint that feels like a non-sequitur. |
| [entendre-engine](./skills/entendre-engine/) | Surface the double meanings already in the room. |
| [pretentious-engine](./skills/pretentious-engine/) | Run anything through the most overwrought theoretical lens available. |
| [fable](./skills/fable/) | A complex idea walks into a forest. It doesn't come back the same. |

More coming.
The goal is a hundred.

For lineages, sources, and what's built versus pending, see [CATALOG.md](./CATALOG.md).

---

## Install

One stratagem:

```bash
curl -fsSL https://raw.githubusercontent.com/saren-ai/oblique-technique/main/install.sh | bash -s -- cut-up
```

A starting set:

```bash
curl -fsSL https://raw.githubusercontent.com/saren-ai/oblique-technique/main/install.sh | bash -s -- @starter
```

By lineage:

```bash
curl -fsSL https://raw.githubusercontent.com/saren-ai/oblique-technique/main/install.sh | bash -s -- @surrealist
curl -fsSL https://raw.githubusercontent.com/saren-ai/oblique-technique/main/install.sh | bash -s -- @oulipo
curl -fsSL https://raw.githubusercontent.com/saren-ai/oblique-technique/main/install.sh | bash -s -- @fluxus
```

All of them:

```bash
curl -fsSL https://raw.githubusercontent.com/saren-ai/oblique-technique/main/install.sh | bash
```

Stratagems land in `~/.claude/skills/` (override with `OBLIQUE_SKILLS_DIR`). The accented slugs take plain-ASCII aliases — `n7` for `n+7`, `detournement` for `détournement`.

---

## On AI skepticism

You're right to be suspicious.
The thing that generates human-sounding text by predicting
the most likely next token is, in fact, not thinking.
It is doing something stranger and more banal than thinking.

These stratagems don't fix that.
They use it.

The model is just running the machine.
You're still the one making something.

---

*Claude skills for Liberal Arts Majors.*
