# Consistency Audit — Resume vs. Homepage / Case Study

**Generated:** Claude (Sonnet), August 2026
**Compared:** `05_Assets/Wireframes/Resume/v3-aligned/styles.css` against `05_Assets/Wireframes/_Promoted/Homepage/styles.css` and `05_Assets/Wireframes/_Promoted/Case Study/styles.css`.
**Why now:** Nicole asked for a consistency audit of the Resume page against the rest of the portfolio, following the same methodology as the earlier `Case Study/Cohesion Audit.md`.
**Status:** Three of four findings below are **fixed in `v3-aligned`**. One is flagged as an open question, not auto-corrected — see Finding 4.

---

## Finding 1 — Identity photo card was a different size than the Homepage's

`.player-card` is reused from the Homepage's About section, but `v1`/`v2` gave it an explicit `width: 260px`. The Homepage's version has no explicit width — it fills a `300px` grid column (`.about-layout { grid-template-columns: 300px 1fr; }`). Same component, same person, rendering 40px narrower on this page than on the Homepage.

**✅ Resolved in `v3-aligned`:** `.player-card` width changed to `300px`, matching the Homepage exactly.

---

## Finding 2 — Company logo badges were a third, undocumented size

The portfolio has two established `.logo-mark` sizes: the standard `32px` (font-size `9px`) used on the Homepage's Work grid and the Case Study's "More Work" cards, and a `.logo-mark.large` variant at `44px` (font-size `10px`) used once, for the Case Study's title-sponsor logo. `v1`/`v2` of this page introduced a third size — `40px`/`10px` — that matched neither.

**✅ Resolved in `v3-aligned`:** `.logo-mark` changed to `32px`/`9px`, matching the standard size used everywhere else logos appear inline in a list (Work grid, More Work) — the closer analog to Resume's Experience list than the one-off `.large` variant.

---

## Finding 3 — Contact-links row had a smaller gap than its Homepage counterpart

`.about-links` (the small text-link row — About's "How I Work / Feminist UX" links on the Homepage, this page's Email/LinkedIn/GitHub) used `gap: 20px` here versus `gap: 24px` on the Homepage. A small, easy-to-miss numeric drift.

**✅ Resolved in `v3-aligned`:** gap changed to `24px`, matching exactly. (`flex-wrap: wrap` was kept — a reasonable addition given this row now holds three links instead of the Homepage's two, not something that needs removing to match.)

---

## Finding 4 — Footer top padding is smaller here than elsewhere (open question, not fixed)

`.site-footer-expanded` uses `padding-top: 100px` on both the Homepage and Case Study. This page uses `padding-top: 40px`. Unlike the three findings above, this isn't obviously a mistake: Resume's body already ends with `120px` of its own bottom padding immediately before the footer, so stacking another `100px` on top (as Case Study does, after its own `120px` bottom padding on `.cs-layout`) might read as excessive on a page whose whole premise is fast, dense scanning rather than an editorial pause. But it's also possible this was simply typed differently without the comparison being made.

**Left as-is, flagged for a decision:** either this is intentional (Resume's density justifies less breathing room before the footer than the other two pages need) or it should be brought back to `100px` for strict consistency. Recommend Nicole makes this call directly rather than treating either answer as obviously correct.

---

## Also Checked, No Issues Found

Nav (markup, spacing, hover states, mobile toggle, `z-index: 50`), footer link/email/CTA styling, `.content-shell` sizing, the `999px`/`16px` corner-radius system, `.engagement-tag` (now restored to its exact original definition — see `v2-refined/notes.md` for that fix), font stack, base color palette (`#111`/`#999`/`#ddd`/`#eee`), and the `900px`/`720px` responsive breakpoints are all identical across Homepage, Case Study, and this page.

One structural note, not a bug: `.placeholder-img` uses `16px` radius everywhere it represents project/work imagery (Case Study's wide images, Work-grid cards), while photo-of-a-person imagery consistently uses `12px` (`.player-photo`, and this page's `.placeholder-img.small` for per-entry photos). That's a real, intentional-reading distinction already present before this page existed, not something introduced here — noted so it isn't mistaken for drift in a future audit.

## Minor, Non-Visual Note

`.nav-resume` on this page carries a few extra explicit properties (`text-decoration`, `color`, `font-size`, `display`) that the Homepage/Case Study version doesn't declare. The rendered result is identical when the class is used inside `.nav-links` (those values already come from the parent `.nav-links a` rule there) — the extra properties exist because this page also reuses `.nav-resume` for the standalone "Download PDF" button, which sits outside `.nav-links` and needs to supply those values itself. Not a visual inconsistency, just a CSS-hygiene note: if this pill-button style gets reused in a third context later, it may be worth promoting to its own shared `.pill-button` class rather than continuing to borrow `.nav-resume`.
