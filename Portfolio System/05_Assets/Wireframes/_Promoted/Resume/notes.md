# Resume Wireframe — v3: Aligned

**Generated:** Claude (Sonnet), August 2026
**Base:** `v2-refined` — this iteration changes only what the consistency audit found.
**Tested against:** Nicole's request, alongside her v1 review, to "do a consistency audit for me for this page as well."
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** `.player-card`, `.logo-mark`, `.about-links` — all brought into exact numeric alignment with their Homepage originals; see `../Consistency Audit.md` for the full comparison this was built from.

---

## What This Iteration Tests

Whether a systematic diff of this page's shared-component CSS values against the Homepage and Case Study catches drift the same way the earlier Case Study Cohesion Audit did — and whether fixing what's unambiguous while flagging what's genuinely a judgment call is the right split here too.

## Fix 1 — `.player-card` width: 260px → 300px

The Homepage's version of this exact card has no explicit width; it fills a `300px` grid column. This page had hardcoded `260px` — a real, unexplained 40px narrower rendering of the same identity card. Matched to `300px`.

## Fix 2 — `.logo-mark` size: 40px/10px → 32px/9px

This page had invented a third logo-badge size that matched neither of the two already established elsewhere: the standard `32px`/`9px` (Work grid, Case Study "More Work" cards) or the one-off `.large` variant at `44px`/`10px` (Case Study title sponsor). Matched to the standard size, since this page's Experience list is the closer analog to the Work grid than to a single title treatment.

## Fix 3 — `.about-links` gap: 20px → 24px

Small numeric drift from the Homepage's `24px` on the same component. Matched exactly. `flex-wrap: wrap` was kept, not removed — a reasonable addition given this row holds three links instead of the Homepage's two.

## Flagged, Not Fixed — Footer `padding-top`: 40px vs. 100px elsewhere

Homepage and Case Study both use `100px`; this page uses `40px`. Not treated as automatic drift, because there's a plausible reason it might be intentional: this page's body already ends with `120px` of its own bottom padding right before the footer, and a dense reference-document page arguably doesn't need the same amount of pre-footer breathing room as the other two, more editorial pages. Left as-is and written up in `../Consistency Audit.md` as an open question for Nicole to decide directly, rather than guessed at either way.

## What Didn't Change

Everything from `v2-refined`: phone number removed, `.engagement-tag` restored to its exact original definition and used as the Experience classification tag, `.skill-tag` as the separate component for Skills/Tools. Content, layout, and the expand/collapse mechanism are unchanged.

## Outcome

**Status: Pending Nicole's review.** This addresses the audit portion of her last note in full. Once she confirms (particularly the Hack iX classification flagged in `v2-refined/notes.md`, and the footer padding-top open question above), this is a strong promotion candidate.
