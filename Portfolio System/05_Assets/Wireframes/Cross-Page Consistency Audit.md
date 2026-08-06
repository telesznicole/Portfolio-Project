# Cross-Page Consistency Audit — Text Width & Margins

**Generated:** Claude (Sonnet), August 2026
**Prompted by:** Nicole noticing, across `_Promoted/Homepage`, `_Promoted/Case Study`, `_Promoted/Resume`, and the current How I Work draft, that "different widths for the text" made the pages feel less cohesive when navigating between them — and correctly noting this should have been caught by the Case Study Cohesion Audit and Resume Consistency Audit, not missed twice.
**Why it was missed both times:** Both earlier audits compared discrete component values (card widths, gaps, logo sizes, breakpoints) against each other, but never systematically compared `max-width` treatment on headline containers and lead-paragraph text as its own category. That's a real gap in audit methodology, not just bad luck — worth naming plainly so it doesn't repeat a third time.

---

## Finding 1 — Case Study's title block was the real source of the "narrower" feeling (fixed)

`.content-shell` itself — the actual page gutter (`max-width: 1200px`, `padding: 0 64px`) — is identical across all four pages and was never the problem. The bug was one layer in: `.cs-title`, the container wrapping Case Study's sponsor tag, H1, and subtitle, had its own `max-width: 900px`. Within the ~1072px actually available inside the shell, that left roughly 172px of unused space on the right that no other page's title block has:

- Homepage's `.hero-anchor`: `max-width: 1050px` — effectively unbound (only 22px narrower than the max possible).
- Resume's `.resume-title`: no max-width at all.
- How I Work's `.hiw-title`: no max-width at all.
- Case Study's `.cs-title`: **900px — the one real outlier.**

**Fixed:** removed the `max-width: 900px` from `.cs-title`, in both `_Promoted/Case Study/styles.css` and its source iteration, `Case Study/v7-final-candidate/styles.css`. This is the fix that actually addresses what was visually noticeable — the title block on every page now uses the same available width.

## Finding 2 — the subtitle-under-H1 line used three different widths (fixed)

Case Study, Resume, and How I Work each independently added a short descriptive line directly under the H1 (Case Study's `.cs-title-sub`, Resume's `.resume-tagline`, How I Work's `.hiw-intro`). None of these were ever checked against each other, because Homepage has no equivalent element to check against in the first place — each was invented in isolation:

- Case Study `.cs-title-sub`: `max-width: 60ch`
- Resume `.resume-tagline`: `max-width: 52ch`
- How I Work `.hiw-intro`: `max-width: 56ch`

**Fixed:** standardized all three to `60ch` (Case Study's original value, since it was first). Updated in `_Promoted/Case Study` (already correct, no change needed), `_Promoted/Resume` + `Resume/v3-aligned`, and `How I Work/v3-working-principles`.

## Finding 3 — the same subtitle line has two different type treatments (flagged, not fixed)

While auditing width, a second, separate inconsistency surfaced in the same three elements: Resume's `.resume-tagline` is styled noticeably heavier than Case Study's and How I Work's version of the same "subtitle under H1" role —

- Resume: `font-size: 20px`, `font-weight: 600`, `color: #1a1a1a`
- Case Study: `font-size: 16px`, weight unspecified (regular), `color: #444`
- How I Work: `font-size: 17px`, weight unspecified (regular), `color: #444`

This is a real inconsistency, but a bigger visual call than a width number — Resume's bolder treatment may be a deliberate choice (it sits next to the identity photo card and needs more presence there), or it may be leftover from an earlier round that was never reconciled against Case Study's later, quieter treatment. **Left as-is, not auto-corrected.** Worth a direct decision: either bring Resume's tagline down to match the quieter 16-17px/regular-weight treatment, or treat Resume's identity-header context as a legitimate exception and leave it — either is defensible, but it should be a decision, not an accident.

## Also Checked, No Further Issues Found

`.content-shell` itself, the 900px/720px responsive breakpoints, and mobile-width gutter padding (24px) are identical across all four pages. Body-copy line-length treatment inside each page's own main content (Case Study's narrative column, Resume's row-pattern content, How I Work's principle paragraphs) varies by necessity — those columns are structurally different widths already (Case Study's narrative sits beside a persistent sidebar; the others don't), so differing internal line lengths there are a reasonable structural consequence, not drift, and weren't standardized.

## A Note on Editing Already-Promoted Files

Finding 1 and Finding 2 both touch `_Promoted/Case Study` and `_Promoted/Resume`, which the Wireframing Workflow treats as closed, final artifacts. This is a deliberate exception, not a precedent for casually reopening promoted work: both were genuine bugs affecting how the pages actually look next to each other, not new design opinions. Each promoted file's source iteration (`v7-final-candidate`, `v3-aligned`) was updated identically, so the two copies stay in sync per the Wireframing Workflow's own promotion rule that they should mirror each other.
