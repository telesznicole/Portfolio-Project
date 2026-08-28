# Homepage Wireframe — v4: Refined Integrated

**Generated:** Claude (Sonnet), August 2026
**Relationship to prior concepts:** Direct evolution of `v3-integrated-hero`, the confirmed leading direction. The most conservative of the three round 4 concepts — applies every requested fix in the most straightforward way possible.
**Tested against:** Nicole's round 3 design review, Decision Log entries 2026-08-04 (round 3)
**Human curation applied:** None yet — pending Nicole's review.
**Shared Components used:** Nav, footer base, logo-placeholder pattern from `Shared Components/README.md`.

---

## What This Iteration Tests

Whether all four newly-locked requirements (player card, stats banner, bold footer CTA, logo-paired Work titles) can be integrated into the validated `v3-integrated-hero` foundation without disrupting what already worked — a "does the winning direction hold up under real content" test, rather than a new structural question.

## Design Rationale

**Hero:** The headline now sits at the top of the hero, with "Trusted by" pinned to the bottom via `justify-content: space-between` on a full-height flex container — directly per Nicole's request to anchor it bottom-left and open genuine whitespace in between. That open middle space is intentional and currently empty; it's reserved for whatever visual element the Design System phase introduces.

**Work cards:** Each now pairs a small `.logo-mark` badge with the role title, sitting beside the existing large project image — salvaged directly from `v3-narrative-column`, added rather than substituted.

**Stats banner:** Reintroduced from the discarded `v1-credibility-first`, placed immediately after Work and before About — the earliest point after Work's proof-dense content, per Nicole's explicit guidance to protect recruiter priority.

**Player card:** A simple, self-contained card (photo placeholder, name, title) sits beside the existing About text content in a two-column layout — the card doesn't replace the quote, bio, or quick facts, it sits alongside them. This is the most literal, least risky interpretation of "player card in About."

**Footer CTA:** A large, bold statement line now sits above the standard contact details in the footer — reserving real visual weight for a closing call to action, wording still open.

## Strengths

- Addresses every one of Nicole's four new requirements directly and completely — nothing deferred or partially implemented.
- Lowest risk of the three round 4 concepts: builds on a foundation Nicole already confirmed as "very close" with no meaningful structural changes to what was working.
- The open whitespace in the hero and the reserved footer CTA space both give the Design System phase real room to work, rather than a fully page fully packed with placeholder content.

## Weaknesses

- This is intentionally the least adventurous of the three round 4 concepts — it doesn't push the "big, bold, fun" typography request very far (the footer CTA is the only place bold scale is really tested here). See `v4-bold-typographic` for a much more direct answer to that specific request.
- The player card treatment here is simple by design — a straightforward side-by-side pairing, not the asymmetric integration with the salvaged About split that Nicole specifically asked to see. See `v4-asymmetric-refined` for that version.
- Selected Collaborations is left as the already-validated row-list rather than testing the salvaged logo-wall here — that comparison happens in the other two round 4 concepts instead.

## Research Informing This Direction

- **Nicole's round 3 design review (this session):** direct source for all four new elements.
- **Decision Log, 2026-08-04 (round 3 entries):** the locked placement decisions (stats banner after Work, player card in About not hero) this concept implements exactly as specified.

## Who This Serves Best

Same audience as `v3-integrated-hero` — this concept exists primarily to confirm the winning direction still works with full content, not to shift who it serves.

## Outcome

**Status: Superseded**, not discarded. This prediction held — it was confirmed as "moderately satisfied" and became the direct basis for `v5-grid-refined`, the eventual winner. Archived as its own concept now that `v5-grid-refined` is the confirmed final direction (2026-08-04).
