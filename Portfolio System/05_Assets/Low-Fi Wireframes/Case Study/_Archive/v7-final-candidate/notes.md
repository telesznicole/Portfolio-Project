# Case Study Wireframe — v7: Final Candidate (Refined)

**Generated:** Claude (Sonnet), August 2026
**Base:** `v6-final-candidate` — this iteration changes exactly three things, per Nicole's review.
**Tested against:** Nicole's review of `v6-final-candidate`, one revision before final approval.
**Human curation applied:** None yet — pending Nicole's final review.
**Shared Components used:** Everything from `v6-final-candidate` unchanged except the three fixes below.

---

## What This Iteration Tests

Whether the three issues Nicole flagged in `v6-final-candidate` — a hierarchy mismatch, a label inconsistency, and two real interaction bugs — are fully resolved without disturbing anything else that was already working.

## Fix 1 — Retrospective's heading now matches standard hierarchy

Nicole: "If retrospective is on the same level hierarchically to be in the progress indicator then it should have the same text treatment hierarchically as the other section titles. Currently it's smaller which implies it's a subsection rather than its own standalone section."

This directly reverses the correction made back in `v2-bold-type` (toning the heading down because the bordered box already carried elevation). That reasoning made sense in isolation, but once Retrospective became a tracked, equal-level entry in the progress nav — same status as Context, Constraints, Decisions, Trade-offs, Outcome, Deeper Look — a smaller heading contradicts what the nav is telling the reader. The `font-size: 22px !important` / `font-weight: 700 !important` override is removed; `.retrospective h2` now inherits the same `clamp(26px, 3.4vw, 40px)` / `800`-weight treatment as every other section. The bordered box remains as its own, separate signal of emphasis.

## Fix 2 — "Deeper Look" label consistency

Nicole: "the progress indicator says 'deeper look' but the body says 'a deeper look'... change it to match the progress indicator and say 'deeper look'." The eyebrow text above the Deep/Technical heading changed from "A deeper look" to "Deeper Look," matching the nav exactly.

## Fix 3 — Two scrollspy interaction bugs

Both bugs were real, and worth explaining rather than just patching silently:

**Bug A — clicking a nav link highlighted the wrong (next) section.** The `IntersectionObserver` marks a section active when it crosses a thin detection band roughly 40–45% down the viewport. That works well for *scrolling*, but short sections (Trade-offs, Outcome) don't reliably occupy that band once they're jumped to and land at the top of the viewport — by the time the band is checked, it can already be inside the *next* section, which is what was getting marked active instead. Fix: clicking a link now sets its active/visited state immediately and directly, and the observer's own updates are suppressed for 700ms afterward (long enough for the scroll animation to finish) so it can't override the click's intent mid-flight. Normal scroll-driven tracking resumes automatically once that window passes.

**Bug B — the jumped-to section's title landed under the sticky nav.** Sections had no `scroll-margin-top`, so a native anchor jump scrolled the target's top edge to exactly `y = 0` — directly behind the floating pill nav. Added `.narrative-block[id] { scroll-margin-top: 120px; }`, which reserves clearance above every tracked section so the browser (and the click handler's scroll behavior) stop short of the nav instead of hiding behind it.

## What Didn't Change

Everything else — body content, sidebar, stepper visuals, the Outcome tracking fix, all four Cohesion Audit corrections — is identical to `v6-final-candidate`.

## Outcome

**Status: 🔒 Promoted — 2026-08-05. Superseded — 2026-08-17.** Nicole confirmed final approval and copied this iteration into `05_Assets/Wireframes/_Promoted/Case Study/` as the canonical promoted artifact, closing the Case Study Template wireframing effort. Seven rounds of iteration (`v1` through `v7`), fully traceable through `05_Assets/Wireframes/Case Study/_Archive/` and the Decision Log, each with reasoning preserved rather than overwritten.

Superseded on 2026-08-17 by `v10-link-cleanup`, following a content-structure conversation that added a Discovery section, an optional metric callout, a Tools & Skills row, a hero visual, and a conditional live-site button to Layer 2 — see the Decision Log for the full round. Archived (moved into `_Archive/`) rather than left in place, since it's no longer the most recent pre-promotion iteration in the active lineage.
