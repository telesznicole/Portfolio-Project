# Case Study Wireframe — v2: Cards in Both

**Generated:** Claude (Sonnet), August 2026
**Base:** `v2-consistency` — combines `v2-cards-sidebar`'s exec-summary card with `v2-cards-body`'s expandable Decisions.
**Tested against:** Nicole's review of `v1-modular-cards` — "whether it's in the sidebar itself or in the content of the page or even both"
**Human curation applied:** None yet — pending review.
**Shared Components used:** Same as both parent variants — `.player-card` DNA for the exec-summary card, the click-to-expand pattern for Decisions.

---

## What This Iteration Tests

The third card-placement option, and the most direct test of whether "sparing" card use can appear in two places at once without adding up to the density problem Nicole flagged in `v1-modular-cards`.

## The Change

Exactly the union of `v2-cards-sidebar` and `v2-cards-body`: exec summary lives in a bordered card, Decisions are individually expandable cards, and nothing else changes. No new components were introduced to make this combination work — it's a literal merge of the other two variants' isolated changes.

## Strengths

- If both individual placements read well on their own, this is the natural next question — does combining them compound the benefit, or start to feel like "cards everywhere" again.
- Still meaningfully more restrained than `v1-modular-cards`, which wrapped every single narrative block — even at "both," this is two card instances on the whole page, not six.

## Weaknesses

- This is the version most likely to reproduce the "loses hierarchy" concern if it's going to reproduce it at all — worth watching for specifically, since it's the closest any v2 variant gets to `v1-modular-cards`'s original density.
- If Nicole ends up preferring only one of the two individual placements, this variant doesn't add new information beyond what `v2-cards-sidebar` and `v2-cards-body` already show separately — it's here for completeness of the comparison, not because it's expected to win outright.

## Who This Serves Best

Same as both parent variants — Hiring Managers and PMs benefit from the Decisions scanning, while the boxed exec summary serves anyone using the sidebar as a persistent reference.

## Outcome

**Status: Superseded**, not discarded. Confirmed as a base option to keep forwarding ("I think having both there isn't a bad thing at all"), with one correction requested (remove the sidebar divider line) and the new refined-bold-type standard applied. See `v3-cards-both` for the corrected version.
