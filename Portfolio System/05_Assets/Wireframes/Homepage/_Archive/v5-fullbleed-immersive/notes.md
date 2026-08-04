# Homepage Wireframe — v5: Full-Bleed Immersive

**Generated:** Claude (Sonnet), August 2026
**Relationship to prior concepts:** Shares every global refinement with `v5-grid-refined` (hero anchoring, trusted-by sentence, stats spread, player card size, section titles, no divider lines, breathing room) — the sole variable being tested is the Work section layout, the second of two variations requested this round.
**Tested against:** Nicole's round 4 design review — "an iteration where each project almost takes up the whole viewport (text on photo)"
**Human curation applied:** None yet — pending Nicole's review.
**Shared Components used:** Nav base from `Shared Components/README.md`; logo-placeholder and inline-logo patterns.

---

## What This Iteration Tests

The more dramatic of the two requested Work layouts: each of the three flagship projects gets its own near-full-viewport moment, with the project image filling the space and the title/description overlaid directly on it, rather than sitting beside or beneath it.

## Design Rationale

Each `.work-immersive` block is `min-height: 88vh` — nearly matching the hero's own height, so scrolling into a project feels like arriving somewhere, not just passing a card. The image fills the block completely (`position: absolute; inset: 0`), and the text sits in an overlay anchored to the bottom, with a soft white gradient scrim behind it for legibility rather than a hard box — this keeps the image feeling like the dominant element while still keeping the text easily readable (contrast holds up well under WCAG even in wireframe grayscale, since it's white-on-light behind dark text, not the reverse).

This is a genuinely different weighting than the grid concept: instead of Work being a section you scan, it becomes three consecutive full moments you move through — closer to how the Feminist UX or Meta project imagery might actually deserve to be seen, if the visual craft is strong enough to support it.

## Strengths

- The most visually ambitious Work treatment tested in this entire project — if the goal is showing off craft (Nicole's own stated concern from round 2: "recruiters... should be able to see my craft through the experience of my portfolio itself"), this is the concept most directly built around that idea.
- Each project effectively gets its own "hero moment," which could read as a confident, editorial choice rather than a conventional case-study list.
- The scrim-overlay technique is a standard, accessible pattern — text contrast doesn't depend on the underlying image's tone, so it holds up even before real photography exists.

## Weaknesses

- This is by far the longest homepage of any concept tested so far — three sections at ~88vh each just for Work adds up to nearly 2.5 viewport-heights before Stats even begins. Worth an honest gut-check on whether this crosses from "breathing room" into "too much scrolling before reaching About/Contact."
- Depends heavily on strong, high-quality project imagery to justify the space — a placeholder pattern reads as neutral, but a weak or generic real photo at this scale would be far more exposed than in a smaller grid card.
- The text-on-image treatment is a real departure from every other section's plain-background approach — worth checking it doesn't feel like a different design system was used for Work specifically.

## Research Informing This Direction

- **Nicole's round 4 design review (this session):** the direct and literal source for this concept's premise.
- **Design Exploration — Homepage/Midu & Motion (Ashish, FigureFilm):** original sources for full-bleed, image-forward treatment referenced earlier in this project's research phase.

## Who This Serves Best

**Any reviewer who scrolls at least partway into Work** — this concept front-loads maximum visual impact per project at the cost of requiring more scrolling to see all three and reach the rest of the page. Best case for Design Directors and visually-driven reviewers; higher risk for a Recruiter who might not scroll past the first immersive block in a fast scan.

## Outcome

**Status: Discarded**, per Nicole's review (August 2026).

**Feedback:** "Not really quite what I was imagining. I was thinking more like it's a huge card for the project that spanned the page, but honestly that's okay I'm kind of leaning against this after seeing the grid version."

Worth noting for future reference: the actual mental image was a large *card* per project (a bounded, contained element), not a full-viewport image-with-text-overlay treatment. If a more visually dramatic Work layout is revisited later, "one big card per project" is a meaningfully different brief than what this concept tested and shouldn't be assumed already answered by this attempt.
