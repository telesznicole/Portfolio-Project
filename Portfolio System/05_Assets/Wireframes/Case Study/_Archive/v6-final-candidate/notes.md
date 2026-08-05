# Case Study Wireframe — v6: Final Candidate

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-cards-both` (body/content) + `v3-progress-stylized` (sidebar progress nav) — Nicole's chosen combination after five rounds of iteration.
**Tested against:** Nicole's round-5 review, wanting a final look before approval: "I think I'll have the v3-progress-stylized progress indicator but with the cards-both body." Plus the Outcome-id fix ("This should be fixed everywhere") and the Cohesion Audit findings.
**Human curation applied:** None yet — pending Nicole's final review before promotion.
**Shared Components used:** `.exec-summary-card` sidebar, `.decision-item` expandable cards, the stepper progress nav — all carried forward from their respective confirmed iterations, not regenerated.

---

## What This Iteration Tests

Whether the two independently-confirmed winners — stylized progress nav, cards-both body — read well combined, with every open correction from round 5 and the Cohesion Audit folded in at once. This is the file Nicole asked to see before deciding whether to promote.

## What's In It

- **Body:** exactly `v3-cards-both` — sidebar exec-summary card (no divider), bold narrative headings, expandable Decisions cards, toned-down Retrospective heading in its bordered box.
- **Progress nav:** exactly `v3-progress-stylized`'s stepper — marker + connecting line, visited/active states — Nicole's preferred direction over `v4-progress-numbered`, `v5-progress-chip`, and the archived alternatives.
- **New: Outcome is tracked.** Nicole: "you raise a bigger issue of Outcome not being id-ed. It should be, it's its own section. This should be fixed everywhere." Outcome now has `id="outcome"` and its own entry in the progress nav, between Trade-offs and Retrospective, matching content order. The stepper now tracks 7 sections instead of 6 — this fix belongs in whichever progress style is ultimately used, not just this file, so it's recorded here as a standing correction, not a one-off.
- **Cohesion Audit fixes, all applied:**
  1. Deep/Technical's divider line (`border-top: 1px solid #eee`) removed — it violated the Homepage's own locked "no divider lines between sections" rule. Replaced with spacing alone (`margin-top: 24px` on top of the standard block gap), matching how the Homepage separates its sections.
  2. "More Work" card now matches the Homepage's Work card exactly — image height `280px` (was `220px`), grid gap `56px 48px` (was a flat `48px`). This makes the "literally the same card component" claim from `v2-consistency` actually true.
  3. Responsive breakpoint aligned to the Homepage's `900px` (was `960px`).
  4. Sticky-nav `z-index` aligned to the Homepage's `50` (was `60`).
  5. `.engagement-tag` gets `flex-shrink: 0` to match the Homepage's copy.
- **What's deliberately NOT in it:** no card treatment on Deep/Technical, no "Optional" tag. `v4-cards-tasteful`/`v5-cards-tasteful-refined` were tried and set aside — see the note below.

## A Note on What Didn't Make the Cut, and Why

`v5-cards-tasteful-refined` was rejected for introducing too many new styles at once (a new filled-card background, a new tag usage) and reading as messy rather than resolving the hierarchy problem it was meant to fix. Worth recording plainly, since it's a real miss on my part: adding an "Optional" tag next to Deep/Technical was the wrong instinct. The Experience Blueprint's Layer 3 framing ("fully optional... a visitor who doesn't scroll this far shouldn't feel they missed something essential") describes how the *system* should treat that content — it was never meant to become a label telling a Hiring Manager the content isn't worth their time. Labeling it "optional" directly undercuts wanting them to actually read it. Reverting to plain flowing text for Deep/Technical avoids that problem entirely and is the simpler, safer choice this close to final.

## Outcome

**Status: 🗄️ Archived — refined into v7.** That "one last look" surfaced three real issues: Retrospective's heading read as a subsection despite being an equal-level tracked entry in the progress nav, the "Deeper Look" label didn't match between the nav and the body eyebrow, and — flagged as important even at wireframe stage — clicking a progress-nav link both mis-highlighted the section after the one clicked and scrolled the target's title behind the sticky nav. All three fixed in `v7-final-candidate`, which changes nothing else from this file.
