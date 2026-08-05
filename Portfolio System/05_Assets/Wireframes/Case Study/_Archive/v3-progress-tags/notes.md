# Case Study Wireframe — v3: Progress Tags

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-refined-baseline` (sidebar exec-summary card, no divider, refined bold type, toned-down retrospective heading).
**Tested against:** Nicole's overall round-3 request — "a variation with tag progress indicators," echoing her `v2-cards-sidebar` note about stylizing the sidebar section titles "maybe make them little tags like we have elsewhere."
**Human curation applied:** None yet — pending review.
**Shared Components used:** `.engagement-tag` visual language (bordered pill, uppercase, small caps) reused directly for the progress nav; corrected `IntersectionObserver` timing from `v2-consistency`.

---

## What This Iteration Tests

The second progress-indicator direction: instead of a stepper/timeline metaphor (`v3-progress-stylized`), this reuses a component already established elsewhere on the page — the `.engagement-tag` pill seen in the case study title and the "More Work" cards — for the section links themselves. This directly answers Nicole's original instinct from reviewing `v2-cards-sidebar`, tested here on its own rather than bundled with the sidebar-card question.

## The Change

Each progress-nav item is now a small rounded pill, styled identically to the site's existing `.engagement-tag` component (uppercase, letter-spaced, bordered). The current section's tag is filled solid dark with white text; all others stay outlined and muted. No connecting line, no marker — the tag itself carries the state change.

## What Didn't Change

Sidebar card, no-divider correction, bold narrative heading scale, toned-down Retrospective heading, and all body content are identical to `v3-refined-baseline`. The underlying scroll-tracking logic is unchanged from `v2-consistency`'s corrected timing — only the visual treatment of the links changed.

## Strengths

- Reuses a component the reader has already seen twice on the page (title sponsor tag, More Work engagement tags), reinforcing visual consistency rather than introducing a new pattern.
- Simpler to implement and reason about than the stepper — one state change (filled vs. outlined) rather than three (upcoming/visited/active).

## Weaknesses

- Loses the passed/upcoming distinction the stepper variant offers — a reader can see where they are, but not how much of the page is behind them.
- Six pills stacked vertically is a different shape and rhythm than the exec-summary card sitting directly above it — worth checking whether the sidebar reads as one cohesive column or two visually distinct blocks.

## Who This Serves Best

Not persona-differentiated — a navigation/wayfinding decision, most relevant to visual consistency across the page rather than to any specific audience.

## Outcome

**Status: 🗄️ Discarded.** Nicole: "not my favorite stylistically." Confirms the earlier note that this direction revisits the "pill-styled section-jump chips" idea already tested, and not chosen, in round 1's `v1-modular-cards`. `v3-progress-stylized` and `v4-progress-numbered` are the two finalists carried into round 5.
