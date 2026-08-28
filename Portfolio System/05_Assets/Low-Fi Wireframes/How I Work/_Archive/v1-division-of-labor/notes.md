# How I Work Wireframe — v1: Division of Labor

**Generated:** Claude (Sonnet), August 2026
**Base:** New — third concept of round 1.
**Tested against:** Experience Blueprint §2.6, Information Architecture §3.4, Decision Log.
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** nav, footer, `.content-shell`, corner-radius system, and typography scale copied verbatim. The role grid extends the Homepage's `.stats-banner` shape (plain, borderless, spread layout) rather than introducing a new card component — see Shared Components README's note that this pattern is reusable for any "quick facts" moment.

---

## What This Concept Tests

Whether the page reads best as a systems breakdown — who (or what) is responsible for which part of the process, plus the actual decision loop that governs how those roles interact — rather than an essay or a chronology. This is the most literally "systems thinking made visible" of the three concepts, aimed squarely at the Engineer / systems-minded Director audience Blueprint §2.6 names as this page's actual reader.

## Content Sources

Both sections are direct restatements of already-locked Decision Log entries, not new claims:
- **Division of Labor** section restates the Decision Log's 2026-07-29 entry verbatim in structure: "Nicole: Vision, storytelling, final decisions. ChatGPT: Strategy, critique, planning. Claude: Large-context synthesis, coding, drafting. Google Deep Research: Market research and requirements."
- **How a Decision Actually Gets Made** restates the Decision Log's 2026-07-31 entry, "Use an iterative AI collaboration workflow where Nicole remains the decision-maker" — the exact five-step loop (Inputs → Draft → Critique → Revise → Done) documented there, unchanged.

## Why This Structure, Specifically

Where `v1-principles-essay` argues for the philosophy and `v1-process-timeline` shows the history, this concept shows the mechanism — the actual, repeatable loop that produced every decision on this site, stated plainly enough that a reader could audit it against the Decision Log itself and find it accurate. It's the most compact of the three, and the most literally diagram-like without becoming an actual diagram.

## What Was Deliberately Not Reused

The role grid is intentionally plain text in a spread layout, not bordered cards — a bordered `.role-block` would visually compete with `.quote-card` and `.player-card` elsewhere in the system, both of which carry different meanings (a testimonial, an identity moment). Borrowing their look here for a role description would blur what those components mean everywhere else. The critique-loop sequence uses static arrow glyphs, not an animated or interactive flow diagram — consistent with Blueprint §2.6's minimal-motion guidance, and honest about the fact that this loop isn't something a visitor needs to click through, just understand.

## Outcome

**Status: Iterate.** Pending Nicole's review alongside `v1-principles-essay` and `v1-process-timeline`.

🗄️ **Archived — discarded outright, no salvage.** Nicole: "I like division of labor the least, how I divide labor is different across projects. I think something about a general process or my principles is something that is more likely to translate across projects." This is a real content-strategy problem, not a styling one — presenting one fixed Nicole/Claude/ChatGPT/Deep-Research breakdown as "how I work" overclaims a consistency that doesn't actually exist project to project. The role-grid mechanism itself isn't reused elsewhere either. Also shared in the same review's broader critique: too much reading, not enough of the interactivity used elsewhere on the site — see `v1-principles-essay/notes.md` for the fuller round-2 direction change.
