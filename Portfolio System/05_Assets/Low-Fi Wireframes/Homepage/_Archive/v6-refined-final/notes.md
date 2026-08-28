# Homepage Wireframe — v6: Refined Final

**Generated:** Claude (Sonnet), August 2026
**Relationship to prior concepts:** Direct refinement of `v5-grid-refined`, the confirmed winning direction. Built to resolve the four specific issues raised in its review, per Decision Log 2026-08-04.
**Tested against:** Nicole's review of `v5-grid-refined`
**Human curation applied:** None yet — pending Nicole's review.
**Shared Components used:** Nav base from `Shared Components/README.md`; logo-placeholder and inline-logo patterns.

---

## What This Iteration Tests

Whether the four specific issues raised against the confirmed winning direction — a missing personal intro, under-considered Work card information, a disconnected stats banner, and an under-structured About section — can all be resolved without disturbing what was already working.

## Design Rationale, By Issue

**1. Hero intro line.** A small line ("Hi, I'm [Nicole] — UX & Product Designer") now sits above the full positioning statement, inside the same bottom-anchored block. It's intentionally quiet — smaller and lighter than the headline — so it reads as a personal greeting that precedes the bigger claim, not a competing headline.

**2. Work card information.** This was a real question worth thinking through, not just a request to fill in. The three things already shown — company/logo (recognition), role title (scope), and a proof line (outcome) — are each doing distinct work and none were cut. What's added is a small `.engagement-tag` per card ("Sponsored Engagement," "Independent Research," "Client Engagement"), directly answering the "does this read as real industry work" concern from earlier in this project without adding a paragraph. The proof line itself is also tightened from a descriptive sentence into a single concrete outcome clause ("Shipped interaction patterns for..." rather than "Led interaction design for... working across..."), so it reads faster without losing meaning. **The exact tag wording is a placeholder** — Meta and Terra Dotta's actual engagement classifications should be confirmed against the real facts of those projects before this goes further; I don't have full certainty on the precise nature of either arrangement.

**3. Stats banner anchoring.** The three stats now sit inside a bordered `.stats-box` — a literal visual container that makes them read as one grouped component. This is deliberately different from the section-divider lines that were removed elsewhere: that rule was about not separating two sections with a thin rule; this is about giving one component a visible boundary so it doesn't look like loose numbers in open space. The distinction matters and is called out explicitly so it doesn't read as walking back the earlier decision.

**4. About restructuring.** Two changes: the player card and the pull-quote now share the aside column together — the quote is paired with identity (photo + name) rather than opening the reading flow, addressing "not just tacked onto the beginning." The main column no longer leads with a single paragraph — it now opens with a short, deliberately bolder intro statement (one to two sentences, set larger than body text), followed by three labeled "method chunks" (Systems Thinking / Engineering Fluency / Research Rigor) in a small grid, each with one line of description. This gives real hierarchy: a headline-level claim, then three scannable, distinct ideas, rather than one undifferentiated block of text.

## Strengths

- Addresses all four issues directly, each with a specific, considered rationale rather than a reflexive fix.
- The method-chunk structure in About gives the section real scannable hierarchy for the first time across every round of this project — this was a genuine, unsolved gap until now.
- The engagement-tag addition on Work cards does meaningful credibility work in very little space, consistent with the density discipline established since round 1.

## Weaknesses

- The three "method chunks" (Systems Thinking / Engineering Fluency / Research Rigor) are new placeholder labels I chose to demonstrate the chunking structure — they're a reasonable guess at themes already established elsewhere in this project (positioning statement, quick facts), but the actual three (or however many) themes are Nicole's call, not a structural decision.
- Engagement-tag wording ("Sponsored Engagement," etc.) needs verification against the real facts of each project before being treated as final — flagged above, worth repeating here.
- The About section is now visually denser than before (aside + intro + chunks + facts + links, all in one section) — worth a direct check that it doesn't reintroduce the density concern this whole project has worked hard to move away from, even though each individual piece is small.

## Research Informing This Direction

- **Nicole's review of `v5-grid-refined`:** the direct and sole source for all four changes.
- **2026 Hiring Expectations research (from early in this project):** the original source for the academic-work-discount concern the engagement tags are built to address.

## Who This Serves Best

Same audience as the confirmed winning direction throughout — this iteration exists to resolve specific execution gaps, not to shift who the page serves.

## Outcome

**Status: Superseded**, not discarded. Three of the four fixes here (hero intro line, work card tags, About chunking) held and carry forward unchanged. The stats-box border and the quote's position in the About aside were both revised in the next iteration based on further feedback — see `v7-credibility-flow`.
