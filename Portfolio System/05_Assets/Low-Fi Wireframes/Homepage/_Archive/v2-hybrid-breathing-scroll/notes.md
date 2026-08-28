# Homepage Wireframe — v2: Hybrid — Breathing Room + Scroll Reveal

**Generated:** Claude (Sonnet), August 2026
**Relationship to prior concepts:** A genuine offshoot, not a revision — shares its structural foundation (wide layout, credibility band, developed About/Collaborations) with `v2-editorial-wide` and `v2-progressive-refined`, but tests a third, previously-untested mechanism instead of choosing between "static" and "wayfinding indicator."
**Tested against:** Nicole's round 1 design review ("maybe even some other meshes or offshoots of those"), Experience Blueprint principle 2 ("motion is functional before it is expressive")
**Human curation applied:** None yet — first pass of round 2, pending Nicole's review.
**Shared Components used:** Nav, footer, and logo-placeholder pattern copied in from `Shared Components/README.md`.

---

## What This Iteration Tests

Whether a restrained scroll-triggered reveal — each Work feature and major section fading and lifting into place as it enters the viewport — can reinforce the "escalating" feeling Nicole responded to in Editorial Escalation, without needing a persistent indicator to do the wayfinding job. This is the explicit "mesh/offshoot" Nicole invited, rather than a straight revision of either v1 concept.

## Design Rationale

Editorial Escalation's alternating image position (which Nicole disliked) was, underneath the specific complaint, an attempt to create a sense of rhythm and escalation as a visitor moved through the Work section. This concept keeps that instinct but expresses it through motion instead of layout — each section arrives with a small, deliberate lift rather than the page relying on alternating positions to feel paced.

The reveal is implemented conservatively, in line with Experience Blueprint principle 2 (motion is functional before expressive) and principle 3 (native scroll physics never sacrificed for a stylistic effect):
- Content is fully present and fully readable in the HTML with no JavaScript at all — the `.reveal` class alone does nothing; the animated starting state (`opacity: 0`) is only applied by JS once it's confirmed ready (`.reveal-ready`), so there's no flash of invisible content if a script is slow to load or fails outright.
- `prefers-reduced-motion` is checked *before* any animation classes are ever applied, not just deprioritized — a visitor with reduced motion enabled never sees the opacity/transform states at all, they see the page exactly as `v2-editorial-wide` presents it.
- `IntersectionObserver` only reflects scroll position to trigger a one-time reveal per element; it never controls, delays, or hijacks scroll itself.

## Strengths

- Directly answers Nicole's request for "meshes or offshoots" rather than just picking a side between the other two round 2 concepts.
- Reframes the "rhythm" instinct behind v1's disliked alternating layout into something that doesn't require an unusual grid pattern to achieve.
- Motion here is genuinely optional at the code level — removing the `<script>` tag entirely leaves a fully functional, fully visible version identical to `v2-editorial-wide`. This is about as low-risk as a motion treatment can be.

## Weaknesses

- This is the only one of the three round 2 concepts introducing a new, previously untested mechanism rather than refining something already reviewed — carries more uncertainty than the other two simply because there's no prior round of feedback on it specifically.
- A fade/lift on every major section (Work features, About, Collaborations, Contact) risks feeling like a gimmick if it's not tuned carefully — the current 24px lift and 0.5s timing are a reasonable starting point, not a validated one.
- Adds the most implementation complexity of the three round 2 concepts, though the complexity is isolated to one small, removable script.

## Research Informing This Direction

- **Nicole's round 1 design review (this session):** direct source for exploring a mesh/offshoot rather than only refining the two existing lineages.
- **Experience Blueprint principles 2 and 3:** the specific justification for how this motion is implemented — functional, reflection-only, fully reversible.
- **Design Exploration — Motion (Ashish, FigureFilm, Sauhee, YanXin):** general source for restrained, purposeful motion as a craft signal, which this concept tests more directly than either other round 2 concept.

## Who This Serves Best

Similar audience to the other two round 2 concepts — this variant specifically tests whether **Design Directors and Senior Designers** (the craft-sensitive audience already best served by the breathing-room direction) respond to motion as an added signal of polish, or find it unnecessary next to a simpler static version.

## Outcome

**Status: Discarded**, per Nicole's round 2 design review (August 2026).

**Feedback:** "This is the same as before but just with slight animations. No other comments."

This confirms the concept's own flagged weakness — it wasn't a structural variation, it was a motion treatment applied to a layout already tested elsewhere. Not a rejection of the motion technique itself: the reveal-on-scroll implementation (readable with JS off, fully disabled under reduced-motion, reflection-only) remains a legitimate, low-risk pattern worth applying to whichever base layout is eventually promoted. It's descoped here as its own concept lineage, not discarded as a technique.
