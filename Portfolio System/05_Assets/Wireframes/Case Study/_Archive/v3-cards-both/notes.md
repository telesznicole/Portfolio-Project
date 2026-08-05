# Case Study Wireframe — v3: Cards Both (Corrected)

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-refined-baseline` (sidebar exec-summary card, no divider, refined bold type, toned-down retrospective heading).
**Tested against:** Nicole's review of `v2-cards-both` — "I think having both there isn't a bad thing at all. No other comments." Confirmed as a base option to keep forwarding, with the sidebar-divider correction applied and the new v3 standard underneath.
**Human curation applied:** None yet — pending review.
**Shared Components used:** `.exec-summary-card` sidebar treatment, `.decision-item`/`.decision-toggle` expandable-card pattern from `v2-cards-body`.

---

## What This Iteration Tests

Whether the "both" combination — card sidebar and expandable Decisions cards together — still holds up once it's carrying the corrected, refined-bold-type standard instead of the earlier `v2-consistency` base. Nothing new is being tested here; this exists to keep the confirmed "both" option current and comparable against the other round-3 variants.

## The Change

Exactly `v3-refined-baseline` plus the Decisions section from `v2-cards-body`: each decision is its own bordered, click-to-expand card, with the rejected alternative hidden until expanded. Every other section — Context, Constraints, Trade-offs, Outcome, Retrospective, Deep/Technical — stays flowing text, matching the baseline.

## What Didn't Change

Sidebar card, no-divider correction, bold narrative heading scale, and the toned-down Retrospective heading all carry over unmodified from `v3-refined-baseline`.

## Strengths

- Keeps the one variant Nicole gave unreserved approval to ("no other comments") current with the corrected standard, so it's still a fair comparison point against the newer variants.
- Two card instances on the page (sidebar, Decisions) — still restrained relative to `v1-modular-cards`, and both now sit on the cleaner corrected foundation.

## Weaknesses

- Same as its v2 predecessor: if Nicole ends up preferring only one of the two individual card placements, this variant doesn't add new information beyond what `v3-refined-baseline` (sidebar only) and a decisions-only variant would show separately.

## Who This Serves Best

Same as `v2-cards-both` — Hiring Managers and PMs benefit from the Decisions scanning, while the boxed exec summary serves anyone using the sidebar as a persistent reference.

## Outcome

**Status: 🗄️ Archived — folded into the final candidate.** Nicole: "I think I'll have the v3-progress-stylized progress indicator but with the cards-both body." This file's body content is now merged directly into `v6-final-candidate` (with the Outcome-id fix and Cohesion Audit corrections applied on top). Archived because it's no longer a standalone comparison point once the final candidate exists, not because anything in it was wrong — everything here carried forward unchanged.
