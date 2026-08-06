# How I Work Wireframe — v6: Refined

**Generated:** Claude (Sonnet), August 2026
**Base:** `v5-converged`, with four specific fixes — see `v5-converged/notes.md` for the full account of each.
**Tested against:** Nicole's review of `v5-converged`.
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** Resume's `.entry-item` / Case Study's `.decision-item` card pattern (for principle containers); Homepage's real `.quote-card`/`.quote-mark`/`.quote-text`/`cite` (copied exactly this time); Case Study's real "More Work" section (`.work-grid`, `.grid-item`, `.placeholder-img`, `.case-title-row`, `.logo-mark`, `.engagement-tag`, `.proof`), copied exactly.

---

## What Changed, Fix by Fix

**1. No more divider lines.** `.principle-item` is now a full bordered card (`border: 1px solid #eee`, `border-radius: 16px`), matching the exact pattern already used for Resume's Experience entries and Case Study's Decisions — separation between principles comes from `gap: 16px` on the list, never from a border line. This was a direct violation of the rule locked back in the Homepage's round 5 ("No border-line dividers between sections, anywhere"), and should have been caught before this went to review, not after.

**2. The quote card is now byte-accurate to Homepage's real component**, not an approximation. Every value was checked against the actual `_Promoted/Homepage/styles.css` this time: `padding: 28px` (was 40/48px), `border: 1px solid #eee` (was #ccc), `.quote-mark` at `40px`/`”` (was 48px and the wrong-direction opening quote), `.quote-text` at `15px`/regular weight/`#222` (was 19px/600/`#1a1a1a`), and the `<blockquote>`/`<cite>` markup restored with a real attribution line. Worth naming plainly: this is the same failure mode as the `.engagement-tag` bug caught earlier in Resume's `v1-baseline` — claiming a component was "reused exactly" without actually checking it against the source. It wasn't exact either time. Nicole's "something about it just looks off" was the correct read of a real, checkable discrepancy, not a vague taste call.

**3. The closing section reuses Case Study's real "More Work" component, unchanged**, rather than the invented plain-link list from `v5`. Same markup, same CSS, same "More Work" label — populated with the three flagship projects referenced in the principles above (Meta, Terra Dotta, Feminist UX). Case Study's own "More Work" excludes whichever project is the current page's subject (it shows the other two); since How I Work isn't "about" any one project, all three appear here.

**4. Each principle is now a two-column row (heading left, ~300px; body right, remaining width)** instead of a single narrow text column. This uses the card's full width without reintroducing a brand logo next to the philosophy statement — the second column is just more of the principle's own text (a wider, more generously-set paragraph), not a visual element competing for attention.

## Outcome

**Status: Archived — superseded by `v7-quote-and-labeling`.**

Nicole's review of this round: the byte-accurate `.quote-card` (fix #2 above) still didn't look right in practice — "I like the idea of having a quote, but I don't like how it looks... I really like it in theory but want it to look nice in practice." Being byte-accurate to Homepage's source wasn't the fix this needed; the small bordered-card treatment itself doesn't work as a *single* standalone quote (Homepage's real version is always paired 2-up in `.quotes-row`). She suggested trying `.footer-cta`'s large display-text scale instead.

She also flagged the "More Work" label from fix #3 as misleading in this context: it implies a curated subset, but this page shows all three flagship case studies in full, not a selection.

Separately (not part of this file's original scope, found afterward across the whole site including already-promoted pages): the collapse/expand toggles here and elsewhere showed both `+` and `–` simultaneously when open (`::before` content was being added on top of literal `+` text, not replacing it), and toggle buttons showed a visible focus outline on mouse click, not just keyboard nav (`:focus` instead of `:focus-visible`). Both fixed directly on this file before archiving — the principle-card structure, two-column layout, and "More on this" progressive-depth expansions (fixes #1 and #4 above) were not in question and carry forward unchanged into `v7-quote-and-labeling`.
