# Homepage Wireframe — v2: Progressive Refined

**Generated:** Claude (Sonnet), August 2026
**Revises:** `v1-progressive-reveal` (active, not archived — this is a refinement, not a replacement)
**Tested against:** Nicole's round 1 design review, Experience Blueprint §2.1–2.4
**Human curation applied:** None yet — first pass of round 2, pending Nicole's review.
**Shared Components used:** Nav, footer, and logo-placeholder pattern copied in from `Shared Components/README.md`.

---

## What This Iteration Tests

Whether the progress indicator earns its place once the rest of the page adopts the same breathing-room treatment as `v2-editorial-wide`. This concept and `v2-editorial-wide` now share an almost identical Work/About/Collaborations structure — the indicator (refined with a hover/focus text label) is the deliberate, isolated variable between them, so a direct comparison actually tests the indicator itself rather than several things at once.

## Design Rationale

Round 1 feedback treated Editorial Escalation and Progressive Reveal as close cousins — Nicole's note that this concept "touches on some of my points from the editorial escalation" is the direct justification for converging their underlying structure this round. The open question from round 1 (does a homepage-length scroll actually need wayfinding, or does it solve a problem that doesn't exist at this length) is still unresolved — this iteration doesn't answer it, it isolates it, by making everything else about the two concepts as close to identical as possible.

The indicator itself is refined from v1: a text label now appears on hover/focus (`Top`, `Work`, `About`, `Collaborations`, `Contact`), so the dots aren't relying on position alone to communicate what they represent — this addresses a real gap in the original version, where a first-time visitor would have no way to know what an unlabeled dot meant without experimentation.

## Strengths

- Isolates the indicator as close to a true single-variable test against `v2-editorial-wide` as this medium allows — whichever one Nicole prefers will say something specific about the indicator's value, not just about pacing in general.
- The hover/focus label genuinely improves the indicator's usability over v1 — it now communicates section names, not just position.
- Still fully reflection-only (`IntersectionObserver`, no scroll hijacking) and keyboard-operable, per Tier 1.

## Weaknesses

- The core open question from round 1 remains open: this doesn't resolve whether a four-to-six-section homepage is long enough to need wayfinding, it just makes the indicator easier to evaluate on its own terms.
- The fixed side rail still needs dedicated horizontal space at every breakpoint (`padding-right: 110px` throughout), which is real layout overhead this concept carries that `v2-editorial-wide` doesn't.
- On mobile, the rail collapses to a horizontal strip with labels hidden entirely (`.progress-label { display: none; }`) — this is a genuine compromise, not a solved problem, and worth a closer look whenever mobile becomes the review focus.

## Research Informing This Direction

- **Nicole's round 1 design review (this session):** direct source for both the structural convergence with `v2-editorial-wide` and the decision to refine rather than abandon the indicator.
- **Design Exploration — Navigation/Sneha:** still the original source for the progress-indicator pattern.
- **Interaction Principles research:** continues to justify the reflection-only, non-scroll-jacking implementation.

## Who This Serves Best

Same audience as `v2-editorial-wide` — this concept exists to test whether the indicator adds enough value to justify keeping, not to serve a meaningfully different persona.

## Outcome

**Status: Discarded**, per Nicole's round 2 design review (August 2026).

**Feedback:** "I see what you mean about this being very similar to the editorial wide. I do like the progression indicators, but I also wonder if they're necessary on this page. I think they could be more useful for the case studies."

The single-variable test this concept was built for produced a clear answer: without the indicator, this concept and `v2-editorial-wide` are structurally the same thing, which is exactly what Nicole flagged. The indicator itself isn't rejected as a pattern — it's redirected to where it actually solves a problem: long case studies, not a four-section homepage with working primary nav. See `v1-progressive-reveal/notes.md` for the full resolution and Decision Log, 2026-08-04.
