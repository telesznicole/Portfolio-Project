# How I Work Wireframe — v1: Principles Essay

**Generated:** Claude (Sonnet), August 2026
**Base:** New — first concept of round 1.
**Tested against:** Experience Blueprint §2.6, Information Architecture §3.4, Portfolio Manifesto, Decision Log.
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** nav, footer, `.content-shell`, corner-radius system, and typography scale — all copied verbatim from `_Promoted/Case Study`. No card, tag, or expand/collapse components reused — see "What Was Deliberately Not Reused" below.

---

## What This Concept Tests

Whether the page reads best as a direct, essay-form extension of the Portfolio Manifesto's own voice — a small number of named beliefs about AI collaboration, each stated plainly and then explained in two or three sentences, with no visual mechanism standing between the reader and the claim.

## Why Three Concepts, Not One (and Why There's No Reference Screenshot)

This round follows Case Study's round-1 shape (three genuinely different concepts) rather than Resume's (one concept, refined directly), because the two starting conditions were different. Resume had an explicit reference Nicole had already saved and a direct "almost exact copy" brief. This page has neither — no saved screenshot exists for a process/methodology page in `04_Research/Design Exploration`, and the brief itself (Blueprint §2.6) argues against leaning on visual inspiration here: this page "earns trust through clarity of thinking, not craft." So the open variable this round is informational structure — essay, timeline, or role breakdown — not visual styling, which stays constant (and restrained) across all three.

## Content Sources

Nothing here is placeholder text. Every claim is either quoted/paraphrased from an existing source or a verifiable fact about this project:
- **Principle 1 and 5** draw directly from the Manifesto's "AI Should Amplify Human Creativity" section — same claims, adapted from essay format into first-person page copy.
- **Principle 2** paraphrases the Decision Log's 2026-07-31 entry, "Use an iterative AI collaboration workflow where Nicole remains the decision-maker" (the Inputs → Draft → Critique → Revise → Done loop) and "Use critique loops as the primary method for improving AI-generated work."
- **Principle 3** cites a real, checkable number: the homepage went through nine rounds of iteration (`v1` through `v9`), all still traceable in `05_Assets/Wireframes/Homepage/_Archive/` and the Decision Log — not a rounded-up marketing figure.
- **Principle 4** paraphrases the Decision Log's 2026-07-29 division-of-labor entry (Nicole / ChatGPT / Claude / Google Deep Research).

## What Was Deliberately Not Reused

Blueprint §2.6 states this page's "interaction & motion opportunities" are minimal, and that motion here "would compete with, rather than support, the content." Two established, validated patterns from elsewhere in this portfolio were considered and deliberately left out for that reason:
- **Click-to-expand** (`.decision-item`, used in Case Study and Resume) — would compress the five principles into a scan-and-click list, which is exactly the wrong pacing for a page whose whole purpose is a reader who already opted into depth.
- **The stepper progress nav** (Case Study's validated marker + connecting line) — built for wayfinding in a long, sectioned narrative. Reusing it here just for visual texture, with no navigation function behind it, would be decoration without purpose — the kind of thing the Manifesto's own "Originality Is Not Novelty" principle argues against.

Both remain valid, reusable patterns for wherever they're actually needed — they're just not needed here.

## Layout Notes

Single narrow column (max 680px), no cards or borders anywhere in the body — length and whitespace do the work of separating ideas, consistent with the page-wide no-divider-lines rule. Line length capped near 62ch per paragraph for long-form legibility, tighter than the Case Study's narrative column since this reads more like an essay than a documented process.

## Outcome

**Status: Iterate.** Pending Nicole's review alongside `v1-process-timeline` and `v1-division-of-labor`.

🗄️ **Archived — refined into `v2-expandable-principles`.** This was Nicole's preferred concept of the three ("I think the principles was my favorite"), but explicitly "in no way impressed": "It's too many words, not something that can be skimmed. Use some of the design motifs and interactions we've had elsewhere." A real, worth-recording process correction: my reading of Experience Blueprint §2.6 ("minimal interaction/motion... earns trust through clarity of thinking, not craft") led me to deliberately avoid the click-to-expand pattern used on Case Study and Resume, treating restraint itself as the goal. Nicole's direct feedback overrides that reading — restraint produced an unskimmable wall of text, not clarity. Per the Wireframing Workflow, taste is a sufficient reason to discard on its own; this is that case. The five principle claims themselves carry forward unchanged into `v2-expandable-principles`, now structured so the collapsed headline alone is the skimmable version, with the reasoning behind it available on click rather than always visible.

Nicole also raised a broader point worth carrying into every remaining concept, not just this one: since this page has no primary nav entry, it has to earn the click on its own merits — "we have to make it worthwhile to have its own page."
