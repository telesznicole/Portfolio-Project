# Case Study Wireframe — v2: Cards in Sidebar

**Generated:** Claude (Sonnet), August 2026
**Base:** `v2-consistency` — this variant changes exactly one more thing.
**Tested against:** Nicole's review of `v1-modular-cards` — "I would love to see some version of the sidebar version where cards are used more, whether it's in the sidebar itself or in the content of the page or even both."
**Human curation applied:** None yet — pending review.
**Shared Components used:** `.player-card` DNA (direct reuse for `.exec-summary-card`), same as `v2-consistency` otherwise.

---

## What This Iteration Tests

The first of three card-placement options: whether wrapping just the Executive Summary in a bordered card — while leaving the progress nav and the entire body as plain lists/flowing text — captures what Nicole liked about `v1-modular-cards` without the "overdone... loses any sense of hierarchy" problem she flagged there.

## The Change

`.exec-summary` becomes `.exec-summary-card`: a `1px solid #ccc` border, `16px` radius, `24px` padding — the same visual treatment as `.player-card` on the homepage, applied to project identity instead of personal identity (this exact reuse was already flagged as a candidate component when `v1-modular-cards` was first built). The progress nav directly beneath it deliberately stays a plain list with no card treatment, on the reasoning that navigation and content are different things — a nav shouldn't visually compete with the summary it sits below.

## What Didn't Change

The entire body — Context through Deep/Technical — stays exactly as flowing narrative text, identical to `v2-consistency`. No cards in the main column at all. This is the point of testing this variant in isolation from `v2-cards-body`.

## Strengths

- Cards used in exactly one place, which is about as "sparing" as a card treatment can get while still answering Nicole's request.
- The exec-summary card gives the sidebar a stronger sense of "this is the important reference block" than the borderless version had — a real visual anchor at the top of a long sticky column.
- Zero risk of the "loses hierarchy" problem from `v1-modular-cards`, since there's nothing in the body competing with it for card-based attention.

## Weaknesses

- This is the smallest, most conservative card intervention of the three variants — if Nicole wants cards to do more visible work, this may read as too timid.
- The card and the plain-list progress nav sitting directly beneath it is a slightly inconsistent visual language within the sidebar itself (one boxed, one not) — worth checking whether that reads as intentional hierarchy or as unfinished.

## Who This Serves Best

No persona shift — this tests a structural preference (does sparing card use in the sidebar improve the reading experience), not a different audience.

## Outcome

**Status: Superseded**, not discarded. Confirmed and promoted to a page-wide standard ("I really like the card in the sidebar") — the exec-summary card, the divider fix, and the tag-styled exploration all carry forward into the round-3 baseline every new variant now builds on.
