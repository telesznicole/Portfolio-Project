# Homepage Wireframe — v1: Compact Dashboard

**Generated:** Claude (Sonnet), August 2026
**Tested against:** Experience Blueprint §2.2–2.4, Competitive Landscape research (bento-grid pattern), Wireframing Workflow Tier 1 criteria
**Human curation applied:** None yet — first pass, pending Nicole's Tier 2 review per Wireframing Workflow §5.

---

## What This Iteration Tests

Whether Work, About, Selected Collaborations, and Contact can function as one unified, densely-arranged "at a glance" module — a bento-style grid — rather than four sequential sections, and whether click-to-expand disclosure can compress Selected Collaborations without violating the no-hover-only-content rule.

## Design Rationale

This is the most direct test of the "functional bento" pattern flagged in the Competitive Landscape research as an unexploited opportunity, particularly associated with AI-native and systems-fluent positioning — a deliberate contrast to Concept 2's maximal single-column pacing. Rather than pacing Work → About → Contact as separate beats, this concept treats them as one dashboard a visitor can scan in whatever order their eye lands, testing density as a feature rather than something to avoid.

Selected Collaborations uses click-to-expand rather than a static list: each entry shows the company name by default (the essential information stays visible without interaction) and reveals the one-line contribution only on click. This is deliberately not hover-based — every `.collab-toggle` is a real `<button>`, keyboard-operable, with `aria-expanded` state — specifically to stay clear of the Tier 1 "no content reachable only through hover" rule while still testing whether disclosure can compress a five-item list further than Concepts 1–4 do.

## Strengths

- Tests real information density without defaulting to hover, which is the trap this pattern usually falls into — the expand/collapse behavior here is fully accessible by design, not as an afterthought.
- Directly answers the systems/technical positioning the revised strategy still wants preserved even under broader company targeting (Google, large product orgs) — a bento layout reads as structurally confident in a way a plain stacked list doesn't.
- Most information-dense concept of the five without requiring the longest scroll — trades vertical space for a denser horizontal arrangement.

## Weaknesses

- Highest risk of feeling cold or engineering-forward at the expense of the personality and craft-sensitivity the Manifesto and Experience Blueprint both call for — a bento grid can easily read as a dashboard for data, not a portfolio for people, if not handled carefully in the visual design phase.
- Merging About into the same dense grid as Work risks under-serving About's stated role as "the turn from what you did to how you think" — at this density, About reads as one more tile, not a narrative beat.
- The four-column grid is the most layout-complex of the five concepts and has the most breakpoints to get right (four columns → two → one) — more surface area for something to break on an unusual viewport.
- Click-to-expand adds a small interaction cost (an extra click) to see collaboration detail that Concepts 1–4 show by default — a genuine trade-off, not a strict improvement.

## Research Informing This Direction

- **Competitive Landscape research:** direct source for the bento/dashboard pattern as an "unexploited opportunity," specifically tied to AI-native and systems-oriented positioning.
- **Design Exploration — Homepage/Rashi:** eclectic, non-linear featured-work arrangement informed the grid's willingness to break from a strict top-to-bottom read.
- **Wireframing Workflow §5 (Tier 1 criteria):** directly shaped the click-to-expand implementation — this concept exists partly to test whether disclosure-by-click can satisfy accessibility requirements a hover-based version wouldn't.

## Who This Serves Best

**Engineers and systems-minded Directors** — the persona most likely to read a dashboard-style arrangement as a positive signal of technical fluency, consistent with the "Design Engineer" positioning trend in the AI Impact research. Serves **About's intended emotional function worst** of the five concepts — worth watching closely if this direction advances.

## Outcome

**Status: Discarded**, per Nicole's design review (August 2026).

**Feedback:** "Everything feels too compact. It is definitely too dense. Sure it shows off some important info right off the bat, but it doesn't show any craft, which is important for the kinds of positions I would be trying to apply for. Recruiters and any others looking at my portfolio to see what I can create should be able to see my craft through the experience of my portfolio itself, not just by scrolling through case studies. This needs more breathing room and, to be honest, feels overwhelming. I almost don't even get any of the information because it's so much all at once."

This is the clearest and most direct rejection of the density hypothesis across all three discarded concepts — worth treating as the definitive verdict on how much information this homepage can carry per screen. One thing worth carrying forward regardless: the click-to-expand pattern for Selected Collaborations is still a legitimate, accessible disclosure mechanism — it's the *density of the surrounding grid*, not the expand/collapse interaction itself, that didn't work. Archived; see `v2-editorial-wide`, `v2-progressive-refined`, and `v2-hybrid-breathing-scroll` in the active Homepage folder for the breathing-room-led direction that replaced this one.
