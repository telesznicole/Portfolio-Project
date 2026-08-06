# How I Work Wireframe — v7: Quote & Labeling

**Generated:** Claude (Sonnet), August 2026
**Base:** `v6-refined` — see `_Archive/v6-refined/notes.md` for the full account of what changed getting there and why this round was needed.
**Tested against:** Nicole's review of `v6-refined`.
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** `.footer-cta`'s exact type scale (for the standalone quote, new use in this context); Homepage's real `.section-lead` (copied exactly, new use in this context); Case Study's real "More Work" `.work-grid`/`.grid-item` (unchanged, carried forward from v6).

---

## What Changed

**1. Quote: dropped the card, kept the quote.** The bordered `.quote-card` — even after being made byte-accurate to Homepage's source in v6 — still didn't read well as a single standalone quote. Homepage's real version only appears paired two-up in `.quotes-row`; alone, the small card felt cramped rather than confident. Replaced it with a plain display statement reusing `.footer-cta`'s exact values (`clamp(28px, 4.5vw, 48px)`, weight 800, line-height 1.15, letter-spacing -0.01em), with a quiet attribution line below — the "big text like in the footer" treatment Nicole suggested directly. No border, no card, no quote-mark glyph; the size and weight alone are what make it read as a quote.

If this still doesn't land, Nicole flagged dropping the quote entirely as an acceptable fallback — that's a one-line removal (`.hiw-quote` section) if so, not a redesign.

**2. "More Work" → "The Work."** The old label implied a curated subset ("more" than what you've already seen), but this section shows the complete set of three flagship case studies, not a selection — which reads as misleading once you notice it. Retitled "The Work" and added a lead line under the title, reusing Homepage's real `.section-lead` component verbatim: "The same three projects — not a new selection, just where these principles play out in full." This states the completeness directly rather than leaving it ambiguous, echoing the voice of Homepage's own lead line over its Work grid ("Three projects, chosen for range — not volume."). The `.work-grid` markup and CSS are otherwise unchanged from v6.

Two other names considered and set aside: "See It In Practice" (nice tie to the page's own "tested" language in the intro, but reads more like a section of examples than a destination) and plain "Case Studies" (accurate but flatter, loses the tie to the site's own "Work" nav language). "The Work" was preferred for matching the primary nav's own label most directly.

**3. Collapse/expand toggle bugs, fixed universally (not scoped to this page).** Nicole caught two real bugs present on every collapsible element site-wide, including already-promoted pages:
- Both `+` and `–` showing at once when a toggle is open — caused by `<span class="toggle-icon">+</span>` (literal text) combined with a `::before` rule adding `–` on top of it, rather than replacing it. Fixed by emptying the span and moving the symbol entirely into `::before`, swapped by the `.open`/`.open` state.
- A visible focus outline appearing on mouse click, not just keyboard navigation — caused by using bare `:focus` instead of `:focus-visible`. Fixed by switching the selector; How I Work's `.principle-more` also gained an explicit focus-visible outline it didn't have before (it had been relying on unstyled browser default, an inconsistency with the other two toggle components).

Applied identically to `_Promoted/Case Study` + `Case Study/v7-final-candidate`, `_Promoted/Resume` + `Resume/v3-aligned`, and this page. All five files verified afterward: HTML tags balance, CSS braces balance, no leftover literal `+` in any `toggle-icon` span, no bare `:focus` remaining on any toggle button.

## Outcome

**Status: 🔒 Promoted — 2026-08-06.** Nicole approved the quote treatment and "The Work" label as-is, with one refinement: more breathing room around the quote (`.hiw-quote` given `padding-top: 48px` / `padding-bottom: 104px`, up from no top padding and 80px bottom, so it reads as its own moment rather than being squeezed between the principle cards and the grid below). Promoted verbatim (post-refinement) to `_Promoted/How I Work/`. This is the final How I Work wireframe for this phase.
