# How I Work Wireframe — v4: Card Grid

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-working-principles`'s content — layout and presentation rebuilt.
**Tested against:** Nicole's round-3 review — four specific problems, all addressed (see `v4-stepper-visual/notes.md` for the shared list; this file focuses on what's distinct about this concept).
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** the bordered, 16px-radius card pattern already validated in Case Study's `.decision-item`, Resume's `.entry-item`, and Homepage's `.player-card` — used here statically (no click-to-expand). `.logo-mark` reused unmodified.

---

## What This Concept Tests

Whether presenting the five principles as a static 2-column card grid — the "cards" motif Nicole named directly — reads as more cohesive with the rest of the site than a single-column list, and whether a sixth grid tile can do the job of "content beyond the principles" without introducing a whole new section type.

## Why Cards, Not Click-to-Expand

Nicole's round-2 complaint about `v2-expandable-principles` was specifically about content being gated behind clicks. This concept reuses the card *shape* everyone recognizes from Case Study and Resume, but every card is static — full content visible immediately, nothing to click to read it. The card border and radius are doing a cohesion job, not an interaction job.

## Width Fix

A 2-across grid at the content-shell's full width replaces round 3's single, narrow column — each row of the page now uses both halves of the available space instead of leaving the right side empty.

## The Sixth Tile — Content Beyond the Principles

Rather than adding a separate new section (a stats banner, a quote, a gallery), this concept folds the "something else" content directly into the grid itself: a sixth card, visually distinct (dashed border, muted background) with real cross-links into the case study work — "Meta case study," "Terra Dotta case study," "All work." Per IA §5's cross-linking strategy, How I Work already links out to case studies in one direction (Case Study Layer 3 → How I Work); this is the inverse link, giving an engaged reader on this page a direct path back into the work that proves it. Link destinations are placeholder (`href="#"`) since individual case study pages haven't been built yet — only the Case Study template has been wireframed so far — but the pattern and placement are real.

## Outcome

**Status: Iterate.** Pending Nicole's review alongside `v4-stepper-visual` and `v4-progressive-depth`.

🗄️ **Archived — the static-card-grid structure wasn't chosen, but its sixth tile's idea directly shaped `v5-converged`'s closing section.** Nicole preferred `v4-progressive-depth`'s structure outright ("I love the progressive depth concept"). This file's real contribution carried forward: the instinct that "content beyond the principles" should be real, functional cross-links into the case study work rather than another stats moment — refined in `v5-converged` into a "Read the Work" closing section with real links to the three flagship case studies, and into "More on this" itself linking directly to the relevant case study where one exists.
