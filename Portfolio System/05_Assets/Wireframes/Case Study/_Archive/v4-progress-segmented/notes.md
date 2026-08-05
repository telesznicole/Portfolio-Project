# Case Study Wireframe — v4: Progress Segmented

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-cards-both` (confirmed standard baseline).
**Tested against:** Nicole's round-3 request for new stylization directions, directly answering her consistency concern with `v3-progress-stylized`: "I just worry about consistency since I don't see this elsewhere."
**Human curation applied:** None yet — pending review.
**Shared Components used:** The 999px pill-radius language already locked page-wide (nav, `.engagement-tag`, `.nav-resume`) — extended here, not reinvented.

---

## What This Iteration Tests

Whether a progress indicator built entirely from a component that already exists everywhere else on the page (the pill) resolves the consistency concern that `v3-progress-stylized`'s dot-and-line stepper raised.

## The Change

The progress nav is now a single vertical pill-shaped track, divided into six segments (one per section), filling solid dark as each section is passed.

## Strengths

- Directly answers the stated concern — no new shape language, only a new arrangement of the pill that's already everywhere on the page.
- Reads clearly as a single unified "progress" object rather than six separate elements, which may communicate the whole-page journey more legibly than per-item markers.

## Weaknesses

- Loses per-section identity somewhat — a segment communicates "you're in section 3 of 6" more than "you're in Decisions" without also reading the adjacent label.

## Outcome

**Status: 🗄️ Discarded.** Nicole: "This has no pill shape in it at all... It's just a long line next to the section titles." Correct, and worth naming plainly: the description in this file overstated what the CSS actually produces. A `999px` border-radius only rounds visibly at a scale where the radius is a meaningful fraction of the element's size — on a 4px-wide track, the rounding is imperceptible, so it reads as a straight line, not a pill. The *intent* (extend an existing shape instead of inventing one) was right; the specific execution didn't deliver on it. `v5-progress-chip` retries the same intent with a shape sized so the pill radius is actually visible.
