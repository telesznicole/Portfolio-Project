# Case Study Wireframe — v1: Modular Cards

**Generated:** Claude (Sonnet), August 2026
**Tested against:** Information Architecture §3.2, Experience Blueprint §2.5, homepage's validated click-to-expand pattern
**Human curation applied:** None yet — first pass, pending Nicole's review.
**Shared Components used:** `.player-card` DNA (informing `.exec-card`), click-to-expand pattern (direct reuse), `.engagement-tag` pill styling (repurposed as `.chip`), corner-radius system, typography scale.

---

## What This Iteration Tests

Whether decomposing a case study into a sequence of bordered, rounded cards — rather than flowing prose — gives a scannable structure that still supports deep reading, and whether the homepage's click-to-expand pattern (previously used for Selected Collaborations) works just as well for Decisions/rejected-alternatives content.

## How Each Decision Extends the Homepage, Not a New Language

- **Nav:** identical copy from `_Promoted/Homepage/`.
- **Exec Summary card:** the most direct structural echo of `.player-card` across all three concepts — same two-column layout logic (image/photo left, identity info right), same 16px-radius bordered container, repurposed for project identity (sponsor image, role, team, duration, proof) instead of personal identity.
- **Chip nav:** literally the homepage's `.engagement-tag` component, same pill shape and border treatment, given a new job — section navigation with an active state, rather than a static label. Reusing an existing tag component for navigation is a genuine "evolve" move, not an invented new UI pattern.
- **Decision cards:** the click-to-expand mechanism is copied directly from the archived `v1-compact-dashboard` homepage concept's Selected Collaborations treatment — real `<button>`, `aria-expanded`, collapsed state keeps the decision itself visible (never hides essential info), only the "rejected alternative" detail is behind the click.
- **Retrospective:** stays inside the same card family as every other section (a deliberate choice, explained below) but gets a solid `#999` border instead of the hairline `#eee` used elsewhere — visual elevation through weight, not a different component.

## A Stated Exception, Not an Oversight

The "no divider lines between sections" rule locked on the homepage was about not separating two sections with a thin rule where whitespace alone should do the job. Here, card borders serve a different function: they're containers giving each narrative beat its own visual boundary in a componentized structure, the same way `.player-card` or `.quote-card` always had borders on the homepage. This isn't a regression to old-fashioned divider lines — it's the same "bordered container" pattern already established, just applied at a higher frequency because this concept's whole premise is modularity.

## Section Order & Page Hierarchy

Same required sequence as the other two concepts: Title → Executive Summary (card) → Context → Constraints → Decisions (expandable) → Trade-offs → Outcome → Retrospective (elevated) → Deep/Technical → Cross-links → Footer. Only the *containers* differ; the underlying IA/Experience Blueprint order does not.

## Information Density & Image Placement

Each card holds one narrative beat at moderate density — shorter paragraphs than the other two concepts, since card boundaries naturally encourage tighter writing. Images live *inside* specific cards (Constraints, Trade-offs) at a contained size (260px) rather than breaking full-width across the page — a genuinely different image philosophy than `v1-sidebar-context` and `v1-editorial-pill`'s full-width breaks.

## Reusable Components Identified

- `.exec-card` — bordered identity card, direct sibling of `.player-card`
- `.chip-nav` / `.chip` — pill-based section navigation, generalizable beyond case studies (could inform any in-page quick-nav)
- `.content-card` — bordered container for one narrative beat
- `.decision-item` / `.decision-toggle` / `.decision-detail` — the click-to-expand pattern, now proven in a second context beyond Selected Collaborations
- `.card-image` — contained (not full-bleed) image treatment

## Strengths

- Most scannable of the three concepts — a reader can see card boundaries and gauge how much is left without reading closely, which is a real aid for a Hiring Manager or PM reading with less time than a Director.
- The click-to-expand Decisions pattern directly serves progressive disclosure — the "considered and rejected" detail (arguably the most senior-reading signal in the whole page) is available to anyone who wants it, invisible-by-default to anyone who doesn't.
- Reuses more distinct homepage components than either other concept (`.player-card`, `.engagement-tag`, click-to-expand) — the strongest single demonstration of "two views of the same product."

## Weaknesses

- Highest risk of feeling fragmented rather than like a continuous narrative — card boundaries that help scannability could also work against the sense of "reading a story," which the Manifesto and Experience Blueprint both care about.
- The `.deep-layer` card's light gray background (`#fafafa`) is the only fill-color departure from pure white/border-only cards anywhere in this project — worth scrutiny on whether that's a meaningful, justified distinction (Layer 3 = different register) or an inconsistency.
- Click-to-expand adds a small interaction cost (an extra click) to see the "considered and rejected" reasoning that the other two concepts show by default — a real trade-off, not a strict improvement, same tension flagged when this pattern was first tested on the homepage.

## Who This Serves Best

Hiring Managers and PMs scanning for structure and outcomes without committing to a full continuous read — the card boundaries give natural stopping/resuming points a flowing narrative doesn't offer as clearly.

## Outcome

**Status: Superseded**, not discarded. The card treatment itself was well-received ("I really do like the cards on this one") but judged overapplied ("maybe a little overdone and loses any sense of hierarchy") — every section, including low-stakes ones like Context and Outcome, got identical card weight. Nicole asked specifically for a version of the sidebar concept using cards more selectively, in the sidebar, the body, or both — see `v2-cards-sidebar`, `v2-cards-body`, and `v2-cards-both`. The click-to-expand Decisions pattern is confirmed as worth keeping, with the same "use sparingly" caveat.
