# Case Study Wireframe — v2: Consistency Fixes

**Generated:** Claude (Sonnet), August 2026
**Base:** `v1-sidebar-context` (archived, superseded)
**Tested against:** Nicole's review of `v1-sidebar-context`
**Human curation applied:** None yet — pending review.
**Shared Components used:** Nav, corner-radius system, typography scale, and — new this round — the exact homepage Work-card component (`.grid-item`, `.case-title-row`, `.logo-mark`, `.engagement-tag`, `.proof`) copied in for the "More Work" section.

---

## What This Iteration Tests

Nothing new stylistically — this is the corrected baseline every other v2 variant builds on. Isolating the two bug-style fixes here means later comparisons (typography, breathing room, cards) are each testing exactly one thing against a clean reference, not a reference that still has known issues mixed in.

## The Two Fixes

**1. Progress-nav active-state timing.** The original implementation used `threshold: 0.4` on the `IntersectionObserver`, which activates a link once 40% of a section's *area* is visible — a genuinely different trigger point depending on how tall each section is, and prone to activating well after a section has already been on screen for a while, closer to when it's leaving. Fixed with `rootMargin: '-40% 0px -55% 0px'` and `threshold: 0`, which creates a thin horizontal detection band roughly 40% down the viewport — a section becomes active precisely when it crosses that line near the top-middle, matching Nicole's request directly ("I would want it to change once the next section hits either the middle or top of the page, not the bottom").

**2. "More Work" cards.** Replaced the simplified `.crosslink-card` (image + text label) with the homepage's actual `.grid-item` markup — same placeholder image treatment, same `.case-title-row` with circular logo mark + title, same `.engagement-tag` pill, same `.proof` line. A visitor finishing a case study and glancing at "More Work" now sees literally the same card component they'd have seen on the homepage's own Work section.

## What Didn't Change

Everything else is identical to `v1-sidebar-context`: sidebar layout, exec summary structure, narrative block spacing (72px), narrative heading scale (26px), retrospective treatment, deep-layer section. This is intentional — this version exists to be the clean comparison point, not to introduce anything new.

## Strengths

- A visitor can now genuinely trust the progress nav to reflect where they actually are, not where they were a screen ago.
- "More Work" now reinforces product cohesion directly — the exact same card a visitor already trusts from the homepage, reused rather than approximated.

## Weaknesses

- Doesn't address either of the two bigger open questions (typography boldness, breathing room) — deliberately, since those are being tested separately.

## Who This Serves Best

Not persona-differentiated — this is a corrections pass, not a content or audience decision.

## Outcome

**Status: 🗄️ Discarded — retired as comparison baseline.** Nicole: "We can drop this now." Served its purpose through two full rounds as the clean reference every v2 and v3 variant was tested against; `v3-cards-both` (confirmed as the new standard baseline) has fully superseded it structurally — the two fixes made here (progress-nav timing, Work-card reuse) are both still present in every downstream variant, so nothing is lost by retiring the plain version itself.
