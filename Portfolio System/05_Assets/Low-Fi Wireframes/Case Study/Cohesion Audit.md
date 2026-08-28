# Cohesion Audit — Case Study Template vs. Promoted Homepage

**Generated:** Claude (Sonnet), August 2026
**Compared:** `05_Assets/Wireframes/Case Study/v3-cards-both/styles.css` (standard baseline at the time of this audit) against `05_Assets/Wireframes/_Promoted/Homepage/styles.css`.
**Why now:** Nicole asked for an audit of how cohesive the Case Study template feels against the Homepage, wanting the two to read as "different parts of the same product."
**Status update:** Nicole confirmed all four findings below as "good catches" and asked for them to be fixed in the final candidate. **All four are now fixed in `v6-final-candidate`** — see the "Resolved" note under each finding. This document is kept as the audit record, not re-run against every iteration; it reflects the state at the time it was written.

---

## Finding 1 — A locked rule is being violated: divider line on Deep/Technical

The Homepage's round-5 refinements (Decision Log, 2026-08-04) locked **"All border-line dividers between sections removed... no lines between sections — it feels very outdated"** as a page-wide rule, applied globally.

`v3-cards-both` (and every other active Case Study variant except `v4-cards-tasteful`/`v5-cards-tasteful-refined`) still has:

```css
.deep-layer { padding-top: 40px; border-top: 1px solid #eee; }
```

That's a divider line separating Deep/Technical from Retrospective — exactly the pattern the Homepage rule bans. It's been carried forward unquestioned since `v1-sidebar-context`. It happens to already be fixed in the two `cards-tasteful` variants, where Deep/Technical became a full card instead of a top-border — but every other live variant (`v3-cards-both` itself, `v3-progress-stylized`, `v4-progress-numbered`, `v5-progress-numbered`, `v5-progress-chip`) still has it.

**Recommendation:** whichever variant gets finalized, this line should come out — replace with spacing alone (matching the Homepage's approach) unless Deep/Technical ends up boxed as a card in the final direction, in which case the card border does the separating instead.

**✅ Resolved in `v6-final-candidate`:** the `border-top` is removed; separation is now a `margin-top: 24px` on top of the standard block gap, spacing-only, matching the Homepage.

---

## Finding 2 — "More Work" isn't literally the Homepage's Work card yet

`v2-consistency`'s stated goal (still true today) was that a visitor finishing a case study should "see literally the same card component they'd have seen on the homepage's own Work section." Close, but not exact:

| Property | Homepage `.placeholder-img` | Case Study `.grid-item .placeholder-img` |
|---|---|---|
| Height | `280px` | `220px` |
| Grid gap | `56px 48px` (row/column) | `48px` (both) |

Everything else about the card — `.case-title-row`, `.logo-mark` (32px), `.engagement-tag`, `.proof` — matches exactly. Only the image height and grid gap drifted.

**Recommendation:** align these two values to the Homepage's, so the claim in the notes ("literally the same card component") is literally true.

**✅ Resolved in `v6-final-candidate`:** image height is now `280px`, grid gap is now `56px 48px` — both match the Homepage exactly.

---

## Finding 3 — Layout breakpoint mismatch

Homepage's primary responsive breakpoint (grid → single column) is `900px`. Case Study's is `960px`. Between roughly 900–960px viewport width, the two pages would present inconsistently — Homepage already in its mobile layout, Case Study still desktop.

**Recommendation:** pick one breakpoint value and use it everywhere; `900px` is already the Homepage's locked value, so Case Study should likely move to match it rather than the reverse.

**✅ Resolved in `v6-final-candidate`:** breakpoint moved from `960px` to `900px`, matching the Homepage.

---

## Finding 4 — Minor drift, low stakes

- **Sticky nav z-index:** Homepage uses `z-index: 50`, Case Study uses `z-index: 60`. No visible conflict today since nothing on either page competes at that layer, but it's unexplained drift rather than a deliberate choice — worth aligning for the sake of not carrying silent inconsistencies forward.
- **`.engagement-tag` missing `flex-shrink: 0`:** present on the Homepage's version, absent from the Case Study's copy. Could matter if a tag ever sits in a tight flex row on a narrow viewport and needs to hold its size rather than compress.

**✅ Both resolved in `v6-final-candidate`:** nav `z-index` moved from `60` to `50`; `.engagement-tag` now has `flex-shrink: 0`.

---

## What's Already Working Well

Worth naming explicitly, since most of the page is in good shape: the floating pill nav (markup, spacing, hover states, mobile toggle) is copied exactly and behaves identically on both pages. The 999px/16px corner-radius system is applied consistently. The `clamp(32px, 5.5vw, 56px)` headline scale, the footer (`.site-footer-expanded`, `.footer-cta`, `.footer-bottom`) markup and sizing, the `.logo-mark`, `.case-title-left h3`, and `.proof` styling, the font stack, and the core color palette (`#111`/`#999`/`#ddd`/`#eee`) are all identical between the two files. The overall spacing philosophy — generous, no-hard-cutoff section transitions — is consistent in magnitude even where exact pixel values differ slightly.

---

## Suggested Next Step

These are small, mechanical fixes (delete one border rule, match four numeric values) rather than design decisions — low-risk to apply directly to `v3-cards-both` once a final direction is locked, so the fixes don't need to be re-applied across every still-open variant individually.
