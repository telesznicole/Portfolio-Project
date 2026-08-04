# Homepage Wireframe — v8: Floating Nav

**Generated:** Claude (Sonnet), August 2026
**Relationship to prior concepts:** Direct evolution of `v7-credibility-flow`. Only the header/nav changed — every other section is identical.
**Tested against:** Nicole's request for a floating nav with a centered logo and split nav groups
**Human curation applied:** None yet — pending Nicole's review.
**Shared Components used:** Should be added to `Shared Components/README.md` as the new nav reference pattern once confirmed, replacing the flush full-width header used in every prior iteration.

---

## What This Iteration Tests

Whether a floating pill-shaped nav — detached from the top edge, logo centered, Work/About on the left and Contact/Resume on the right — reads as more considered than the flush full-width header used in every iteration up to this point, and whether it holds up responsively when collapsed to mobile.

## Design Rationale

**The pushback, stated plainly (as requested):** the one real risk with a centered-logo, split-nav pattern is usually visual imbalance when the two groups have very different label lengths or item counts. Here, the split is even (2 and 2) and the label lengths are close enough (Work/About vs. Contact/Resume) that this isn't a real concern — so I didn't push back on the core idea, just built it. The pattern also fits the site's established personality: bold section titles, a big footer CTA, generous whitespace — a floating pill nav reads as one more confident, editorial choice consistent with everything already locked, not a departure from it.

**Implementation:** `.site-header-wrap` is `position: sticky; top: 20px`, centering a `max-width: 720px` pill (`.floating-nav`) with a full border and rounded corners, so it's visibly detached from the browser edge rather than flush against it, at every scroll position.

**Mobile:** A pill this size has no room for two nav groups plus a centered logo plus a toggle button on a narrow screen. Below 720px, both `.nav-group` blocks hide entirely, leaving just the centered logo and a toggle button in the pill. Tapping it reveals `.mobile-nav-panel` — a second, matching pill-styled panel directly beneath the nav — containing all four links stacked. This keeps the floating/pill visual language consistent between the collapsed and expanded states rather than switching to a generic full-screen mobile menu.

**Accessibility:** Tab order follows visual order left to right (Work, About, logo, Contact, Resume), so keyboard navigation matches what's seen on screen. The toggle button carries `aria-expanded` and `aria-controls`, consistent with every prior nav implementation in this project.

## Strengths

- A genuine visual upgrade from the flush header used in every iteration so far, without touching page content that's already been confirmed.
- The centered-logo/split-nav pattern works cleanly at this specific item count (4 links) — the usual risk with this pattern doesn't apply here.
- Mobile collapse preserves the pill's visual identity instead of falling back to a generic pattern, keeping the floating-nav idea consistent end to end.

## Weaknesses

- A centered logo is a mild departure from the "logo always top-left" convention most visitors are used to — low risk for a portfolio specifically, but worth a conscious acknowledgment rather than treating it as obviously correct.
- The pill's `max-width: 720px` is a specific choice that hasn't been tested against real logo/wordmark width — if the actual name/logo mark ends up wider than expected, the pill may need to grow, which would need rebalancing against the nav groups on either side.

## Research Informing This Direction

- **Nicole's direct request (this session):** the full and sole source for this concept.

## Who This Serves Best

Not persona-differentiated — this is a chrome-level change, not a content or funnel decision.

## Outcome

**Status: Superseded**, not discarded. The pill-nav direction was confirmed ("i think the pill nav is good enough"), but its internal spacing had a real structural cause (see `v9-rounded-final`'s notes) that a centered-logo layout couldn't fully resolve. Nicole approved moving the logo to lead the pill instead, which fixed it at the root. Carried forward into `v9-rounded-final` along with a new page-wide corner-radius system.
