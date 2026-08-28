# How I Work Wireframe — v4: Progressive Depth

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-working-principles`'s content — layout and presentation rebuilt.
**Tested against:** Nicole's round-3 review — four specific problems, all addressed (see `v4-stepper-visual/notes.md` for the shared list; this file focuses on what's distinct about this concept).
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** the click-to-expand mechanism from Resume's `.entry-item`/Case Study's `.decision-item`, but redesigned so it never gates base content. Homepage's Selected Collaborations logo-wall, reused directly for the closing section.

---

## What This Concept Tests

Whether "collapse" — the third motif Nicole named — can work here if it's rebuilt correctly: used for genuine bonus depth rather than as the only way to reach any content at all, which was the actual problem with `v2-expandable-principles`, not the mechanism itself.

## Fixing What Was Actually Wrong With Collapse Last Time

Every principle's base content — heading, real tie-back sentence, and a `.logo-mark` — is visible with zero interaction required, identical in spirit to `v3`'s "nothing gated" approach. The `More on this` button only appears once real content is already on screen, and clicking it adds a second, genuinely additional sentence — not the first piece of substance. A visitor who never clicks a single button still gets the complete argument; a visitor who clicks all five gets a slightly deeper version of it.

## Width and Visual Fix

Each principle uses a two-column row (a 52px `.logo-mark` circle beside the copy) rather than a single narrow text block, and the paragraph's own max-width is widened to 68ch to make better use of the row — a more moderate fix than the other two concepts' visual placeholders, appropriate to this version's quieter, list-driven feel.

## Content Beyond the Principles — "Where This Shows Up"

Closes with a logo-wall — Homepage's Selected Collaborations pattern, reused exactly — listing all five real engagements referenced across the principles (Meta, Terra Dotta, FINRA, Deloitte, Hack iX) as a single, wide, visual proof moment. This is the most direct "non-text element at scale" of the three concepts: five real logos, immediately recognizable, doing more work in one glance than another paragraph would.

## Outcome

**Status: Iterate.** Pending Nicole's review alongside `v4-stepper-visual` and `v4-card-grid`.

🗄️ **Archived — confirmed as the winning structure, refined into `v5-converged`.** Nicole: "I love the progressive depth concept. I'm thinking maybe we can push that a little further." Three specific refinements requested, all applied in `v5`: (1) "More on this," when it references a case-studyable project, should link directly to it — added for the three flagship projects (Meta, Terra Dotta, Feminist UX); an inline project image inside the expansion was considered and deliberately left out per Nicole's own "may get too busy" concern. (2) "I don't really like the logos next to each philosophy" — the per-principle `.logo-mark` shown on the always-visible claim is removed; a logo now only appears inside "More on this," where a specific brand is actually being discussed, not attached to the philosophical statement itself. (3) "We can get rid of the 'Where This Shows Up' section, it doesn't add anything" — the closing logo-wall is dropped, replaced by a "Read the Work" section with real links to the three flagship case studies. The `.quote-card` Nicole liked from `v4-stepper-visual` is added as a closing visual moment before that section.
