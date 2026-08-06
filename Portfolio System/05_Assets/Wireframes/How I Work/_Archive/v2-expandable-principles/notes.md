# How I Work Wireframe — v2: Expandable Principles

**Generated:** Claude (Sonnet), August 2026
**Base:** `v1-principles-essay`, restructured — same five claims, new interaction model.
**Tested against:** Nicole's round-1 review (all three concepts).
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** `.principle-item`/`.principle-toggle` reuse the click-to-expand mechanism validated in Case Study's `.decision-item` and Resume's `.entry-item` — same button/`aria-expanded`/collapsed-state structure, renamed for clarity but not reinvented.

---

## What This Concept Tests

Whether converting the five principle statements from continuous prose into click-to-expand cards — collapsed state showing only the full claim, expansion revealing one supporting sentence — solves both problems Nicole raised: too many words to skim, and not enough of the interactive language used everywhere else on the site.

## Why This Round Happened

Round 1 tested three different informational structures under one shared assumption: that this page should stay visually and interactively quiet, per Experience Blueprint §2.6's language about "minimal" interaction and earning trust "through clarity of thinking, not craft." Nicole's review rejected that assumption directly, for all three concepts: "neither of these pages excites me though and they feel like too much reading and words... Use some of the design motifs and interactions we've had elsewhere." Per the Wireframing Workflow, taste is sufficient reason to redirect a whole round even when a concept technically satisfies its brief — this is that case, recorded here rather than treated as a contradiction to quietly resolve.

## What Changed From v1

Content is unchanged — the same five claims, trimmed slightly tighter. Structure is the whole change: each principle is now a real `<button>` with `aria-expanded`, collapsed to just its headline (a `.principle-num` badge plus the bold claim, nothing else visible), expanding on click to one sentence of support. A visitor skimming the collapsed list alone gets the full argument in five short lines; anyone who wants the reasoning behind any one of them can open it individually.

## Where This Sits Among the Three v2 Concepts

This is the most conservative of the three round-2 concepts — same content, new interaction, no new information. `v2-decision-log-excerpt` and `v2-visual-process-gallery` go further, answering Nicole's separate "make it worthwhile to have its own page" note by introducing content that doesn't exist anywhere else on the site (real Decision Log excerpts; a visual before/after of actual iteration rounds). This concept is included as the direct, minimal-change answer to the skimmability complaint, for comparison against the two more ambitious options.

## Outcome

**Status: Iterate.** Pending Nicole's review alongside `v2-decision-log-excerpt` and `v2-visual-process-gallery`.

🗄️ **Archived — right instinct, two real problems.** Nicole's review: "I do like having expandable pieces, but... it more so feels like a burden rather than something that's helpful because you have to click every single thing you want to see... this seems like it could be on a page that already exists. It doesn't feel like it has enough of a purpose to stand on its own." Two distinct, worth-separating critiques: (1) an interaction problem — gating every single piece of content behind a click, with nothing substantive visible by default, made a short page feel like a chore rather than a quick read; (2) a content problem — five AI-collaboration-specific claims alone don't carry enough weight to justify a dedicated, unlisted page when About already gestures at similar territory. A follow-up alignment conversation confirmed the page needs to be a broader design-philosophy page (AI collaboration as one supporting principle among several, not the whole subject), with real work examples and a credibility strip adding the missing substance. `v3-working-principles` keeps this file's core structural instinct (a numbered list of named principles) but drops the click-to-reveal gate and broadens the subject significantly.
