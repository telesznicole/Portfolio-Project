# How I Work Wireframe — v4: Stepper + Visual

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-working-principles`'s content (philosophy scope, real tie-backs) — layout and presentation rebuilt.
**Tested against:** Nicole's round-3 review — four specific problems, all addressed (see below).
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** Case Study's stepper (marker + connecting line), reused as a static vertical rhythm rather than scroll-tracked navigation. `.logo-mark` (Homepage/Case Study/Resume) reused unmodified. `.quote-card` (Homepage) reused unmodified for the closing content.

---

## What This Concept Tests

Whether reusing Case Study's stepper motif — the one Nicole named directly — ties this page visually to the rest of the site, and whether pairing each principle with a real logo and a visual placeholder (instead of a numbered badge and bare text) fixes both the "no non-text elements" and "content only on one side" problems at once.

## The Four Problems From Round 3, and How This Concept Answers Each

1. **Stats banner didn't fit.** Dropped. The real numbers (5,000+ data points, 10 practitioners, 60+ students) that used to live in a separate strip now only appear inside each principle's own tie-back sentence, where they're doing real work instead of sitting in a generic credentials row.
2. **Layout only used part of the width.** The old `56px 1fr` grid with a `64ch`-capped paragraph left a large dead zone on the right of every row. This concept's `24px 1fr 300px` grid gives each principle a real visual on the right — the row now uses the full content-shell width, not just its left half.
3. **No non-text elements.** Each principle now carries a `.logo-mark` (the real company or project it's tied to) and a `.placeholder-img` visual. Both are existing components, not new iconography — this page finally uses the same visual language as every other page.
4. **No motif connecting this page to the rest of the site.** The numbered badges are gone. The stepper — marker + connecting line — is the exact pattern from Case Study's progress nav, repurposed here as a static spine rather than a scroll-tracked nav (there's nothing to navigate to on a single-scroll page this short, so the interactive tracking behavior wasn't reused, just the visual language).

## Content — Real Companies, No Repeats

Five different real ties, each sourced from `Professional Profile.md`/`Resume.md`, deliberately spread across five different engagements rather than reusing one company twice: Meta (engineering/design principle), Terra Dotta (systems principle), the Feminist UX thesis (people-first principle), FINRA (research principle — moved off Meta, which was `v3`'s choice, to avoid citing the same company twice), Hack iX (AI principle).

## Additional Content Beyond the Principles

Closes with a `.quote-card` — reused exactly from Homepage's Stats + Quotes section — carrying a line adapted from the Manifesto's "AI Should Amplify Human Creativity" section. This is the "something else on the page" Nicole asked for: a visual break with real weight, not a sixth principle.

## Outcome

**Status: Iterate.** Pending Nicole's review alongside `v4-card-grid` and `v4-progressive-depth`.

🗄️ **Archived — converged into `v5-converged`, built on `v4-progressive-depth`'s structure.** Nicole: "I love the progressive depth concept" — this concept's own structure (stepper spine, per-principle logo + visual) wasn't chosen as the base. Two things from this file specifically were kept and carried into `v5-converged`: the `.quote-card` closing moment ("I like the incorporation of a quote... so we can incorporate that") and the general instinct that a real project reference deserves a real link, refined into `v5`'s "See the full case study →" links. The per-principle `.logo-mark`-next-to-the-claim treatment tested here is explicitly the thing Nicole asked to remove: "I don't really like the logos next to each philosophy because it sounds like my philosophies come from brands."
