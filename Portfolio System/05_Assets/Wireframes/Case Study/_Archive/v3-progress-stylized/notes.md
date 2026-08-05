# Case Study Wireframe — v3: Progress Stylized

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-refined-baseline` (sidebar exec-summary card, no divider, refined bold type, toned-down retrospective heading).
**Tested against:** Nicole's overall round-3 request — "a variation with stylized progress indicators."
**Human curation applied:** None yet — pending review.
**Shared Components used:** Corrected `IntersectionObserver` timing from `v2-consistency`; sidebar card + no-divider standard from `v3-refined-baseline`.

---

## What This Iteration Tests

Whether giving the progress nav a more crafted, purpose-built visual treatment — beyond the plain text-link-with-left-border pattern every other variant has used so far — reads as a meaningful upgrade or as unnecessary decoration on top of something that already tested well (`v2-consistency`'s fixed trigger timing was already confirmed as "pretty locked in").

## The Change

The progress nav becomes a vertical stepper: a small circular marker sits next to each section label, connected by a thin vertical line running the height of the nav. As the reader scrolls, markers for sections already passed fill in as small solid dots; the current section gets a larger marker with a soft ring around it; sections not yet reached stay hollow outlines. This required a small addition to the existing scroll-tracking script — it now also tracks each link's position in the list to apply a `.visited` state to everything before the active section, not just toggling `.active` on one link at a time.

## What Didn't Change

Sidebar card, no-divider correction, bold narrative heading scale, toned-down Retrospective heading, and all body content are identical to `v3-refined-baseline`. The underlying `IntersectionObserver` trigger points are unchanged from the corrected `v2-consistency` timing.

## Strengths

- Gives the reader a literal sense of progress through the page — how much has been read and how much is left — which plain text links don't communicate on their own.
- The passed/current/upcoming state distinction is a natural fit for a case study's inherently linear, step-by-step narrative structure.

## Weaknesses

- More visual complexity in the sidebar than any variant Nicole has approved so far — worth checking whether it reads as purposeful or as an added layer the plain-link version didn't need.
- The connecting line is a new visual element with no counterpart elsewhere on the page; if it doesn't earn its place, it's the most reversible part of this variant.

## Who This Serves Best

Not persona-differentiated — this is a navigation/wayfinding decision, most noticeable to any reader who's actively using the sidebar to track their place rather than scanning past it.

## Outcome

**Status: 🔒 Confirmed winner — folded into the final candidate.** After two full rounds of alternatives (`v4-progress-pared`, `v4-progress-segmented`, `v3-progress-tags`, `v4-progress-numbered`, `v5-progress-numbered`, `v5-progress-chip` — all archived), Nicole confirmed this direction outright: "I think I'll have the v3-progress-stylized progress indicator but with the cards-both body." The numbered alternative came close but had a real flaw she couldn't get past — the number badges "reads weird" against Retrospective's and Deep/Technical's already-distinct box treatments. This stepper doesn't have that problem since it's not paired with any per-section typographic device. Merged into `v6-final-candidate` with one addition: a 7th tracked marker for Outcome, which this file (like every prior iteration) was missing.
