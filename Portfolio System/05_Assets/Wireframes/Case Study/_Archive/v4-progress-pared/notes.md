# Case Study Wireframe — v4: Progress Pared Down

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-cards-both` (confirmed standard baseline).
**Tested against:** Nicole's round-3 request — "maybe a parred down version of the current stylized one" — plus Experience Blueprint §2.5's framing of the progress indicator as "functional wayfinding, not decoration."
**Human curation applied:** None yet — pending review.
**Shared Components used:** `v3-progress-stylized`'s marker/visited-state script logic, simplified.

---

## What This Iteration Tests

Whether most of the stepper's wayfinding value survives with much less visual weight — a single small marker per section, no connecting line, no active-state ring.

## The Change

Kept: a small dot marker per link, filled as sections are visited, larger fill on the active one. Removed: the connecting vertical line and the ring/glow on the active marker.

## Strengths

- Meaningfully lighter than `v3-progress-stylized` while still showing passed/current/upcoming state, which plain text alone doesn't.

## Weaknesses

- Still introduces a marker shape with no counterpart elsewhere on the page — doesn't resolve Nicole's consistency concern on its own, only reduces its visual footprint. Compare directly against `v4-progress-segmented` and `v4-progress-numbered`, which each extend an existing component instead.

## Outcome

**Status: 🗄️ Discarded — not a fault, narrowed out.** Nicole: "I don't mind this, although I think the spacing needs a little refining." Not disliked, but the round-4 review narrowed the field to two finalists — `v3-progress-stylized` and `v4-progress-numbered` — and this variant wasn't one of them. Archived rather than kept as a live third option; the spacing note is preserved here in case this direction gets revisited later.
