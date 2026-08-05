# Case Study Wireframe — v2: Bold Type

**Generated:** Claude (Sonnet), August 2026
**Base:** `v2-consistency` (progress-nav timing + More Work cards already fixed) — this variant changes exactly one more thing.
**Tested against:** Nicole's review of `v1-sidebar-context` — "I don't see a ton of big, bold typography like in the homepage... that is the biggest disconnect from the homepage."
**Human curation applied:** None yet — pending review.
**Shared Components used:** Same as `v2-consistency`, unchanged.

---

## What This Iteration Tests

Whether scaling narrative headings up to a real display size — rather than a flat, modest 26px — closes the gap Nicole identified as the biggest visual disconnect from the homepage.

## The Change

`.narrative-block h2` moves from a flat `26px` to `clamp(26px, 3.4vw, 40px)`, weight 800, tighter letter-spacing (`-0.015em`), and a tighter line-height (1.08) to match the homepage's display-type character. This isn't the same scale as the homepage's own section titles (`clamp(32px, 5vw, 60px)`) — deliberately: this page has six narrative headings plus a title, versus the homepage's four section titles total. Using the homepage's full scale at this frequency would overwhelm the page the same way oversized titles did in the archived `v4-bold-typographic` homepage concept, which Nicole herself asked to be reined in for exactly that reason. This is a scaled-down member of the same type family, not a literal copy of the homepage's largest size.

Deep-layer headings got a proportional (smaller) version of the same treatment, keeping their already-established "different register" distinction from the main narrative headings intact.

## What Didn't Change

Body text, sidebar, retrospective's border/padding treatment, spacing rhythm, image treatment, More Work cards — everything else is identical to `v2-consistency`.

## Strengths

- Directly answers the specific gap Nicole named, using the same reasoning (not the same literal number) that already got the homepage's bold-title treatment reined in successfully.
- Headings now read as confident, consistent with the rest of the page's visual register, without needing any other section to change.

## Weaknesses

- Six enlarged headings across one page is a real cumulative visual weight increase — worth confirming this doesn't start to feel repetitive at this frequency, the same concern that applied to the homepage's giant section labels before they were reined in.
- Retrospective doesn't get any additional type-scale distinction beyond what the other headings now share — it's still elevated only through its border/padding treatment. Worth flagging as a real option (not yet taken) if Nicole wants the credibility-peak section to stand out typographically too, not just structurally.

## Who This Serves Best

Not persona-differentiated — a visual register decision, not a content or audience one.

## Outcome

**Status: Superseded**, not discarded. Confirmed and promoted to a page-wide standard, with one correction: the Retrospective heading specifically reads as "lower hierarchy" than the box treatment around it implies, and should be toned down rather than matching the other headings' new scale. See `v3-refined-baseline` and its siblings for the corrected version.
