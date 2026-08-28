# Case Study Wireframe — v3: Refined Baseline

**Generated:** Claude (Sonnet), August 2026
**Base:** Combines `v2-cards-sidebar` and `v2-bold-type` (both confirmed and promoted), with two corrections applied.
**Tested against:** Nicole's review of both parent concepts.
**Human curation applied:** None yet — pending review.
**Shared Components used:** `.player-card` DNA (exec-summary card), bold narrative-heading scale, same as parents.

---

## What This Iteration Tests

This is the new standard, shown clean — no additional variable, just the two confirmed wins (sidebar card, bold type) combined and corrected. Every other round-3 variant builds on exactly this file.

## The Two Corrections

**1. Sidebar divider removed.** `.cs-progress-nav` no longer has `border-top: 1px solid #eee` — the gap between the exec-summary card and the progress nav (now `32px` via the sidebar's flex `gap`) does the separating alone. This was flagged as feeling dated once a card was introduced above it — a hairline rule next to a bordered card reads as leftover, not intentional.

**2. Retrospective heading toned down.** `.retrospective h2` now overrides the general bold heading treatment back down to `22px`/`700` weight, instead of matching the other narrative headings' new `clamp(26px, 3.4vw, 40px)`/`800` scale. Nicole's read was exactly right: the retrospective section already carries elevation through its bordered box, and stacking a second, competing form of emphasis (an oversized heading) on top of that made it read as lower hierarchy, not higher — two signals fighting each other rather than reinforcing.

## What's Otherwise Unchanged

Body stays flowing text (no Decisions cards here — that's `v2-cards-body`'s and `v3-cards-both`'s job). Spacing matches `v2-consistency`. Progress nav is still plain text links with the corrected `IntersectionObserver` timing.

## Strengths

- A clean, legible standard for every other round-3 variant to build from — if this alone reads well, everything downstream inherits that.
- Both corrections are small, surgical fixes to specific, named problems, not broad reworks.

## Weaknesses

- Doesn't yet answer any of the three remaining open questions (progress-nav styling, full section cards) — deliberately, since those are what the other four round-3 variants exist to test.

## Who This Serves Best

Not persona-differentiated — this is the new structural standard, not a content or audience decision.

## Outcome

**Status: 🗄️ Discarded — superseded.** Nicole: "We can ignore this with v3-cards-both being the new baseline." `v3-cards-both` already contained everything in this file (sidebar card, no divider, refined bold type, toned-down retrospective heading) plus the expandable Decisions cards, and was confirmed with no corrections — making this plain version redundant to keep testing against separately. Archived, not deleted; still the version-history record of how the corrected v3 standard (no sidebar divider, toned-down retrospective heading) was reached, referenced from `v3-cards-both`'s notes.
