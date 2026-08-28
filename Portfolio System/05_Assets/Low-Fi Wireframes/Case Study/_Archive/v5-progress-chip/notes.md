# Case Study Wireframe — v5: Progress Chip

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-cards-both` (standard baseline).
**Tested against:** Nicole's round-4 request for "a few last progress variations" and her stated preference for "something clean," plus her `v4-progress-segmented` feedback that the described pill wasn't actually visible.
**Human curation applied:** None yet — pending review.
**Shared Components used:** The 999px pill radius, at chip/tag scale (matching `.engagement-tag`'s actual size) rather than a thin track.

---

## What This Iteration Tests

Whether the "reuse the existing pill" intent — which `v4-progress-segmented` aimed for but didn't visually deliver — reads correctly when the pill is sized like an actual chip instead of a 4px-wide track.

## The Change

Progress-nav items are plain text with no border, marker, or line. Only the current section gets a filled dark pill background wrapping its label — the same 999px radius used everywhere else, but at a scale where the rounding is actually visible.

## How This Differs From `v3-progress-tags` (Archived)

`v3-progress-tags` gave every item — active or not — an outlined pill, so the sidebar was six bordered chips at all times. This variant gives *only* the current section a pill; upcoming and visited sections stay completely plain, unstyled text. Fewer shapes on screen at once, closer to the "clean" quality Nicole named as her priority for this decision.

## Strengths

- Correctly executes the "extend an existing component" intent this time — the pill is legible as a pill.
- Minimal by default; only one chip exists on the page at any moment.

## Weaknesses

- Loses the passed/upcoming distinction entirely (no visited state) — purely current-vs-not, less information than the stepper or numbered options carry.

## Outcome

**Status: 🗄️ Archived — second choice, on its own merits.** Nicole: "I think this looks clean, but I think I like the v3-progress-stylized better. I will say this was a very clean option though that I'm not opposed to." Not discarded for a flaw — genuinely close, and worth remembering as a strong fallback if the stepper direction ever needs reconsidering. `v3-progress-stylized` chosen for `v6-final-candidate`.
