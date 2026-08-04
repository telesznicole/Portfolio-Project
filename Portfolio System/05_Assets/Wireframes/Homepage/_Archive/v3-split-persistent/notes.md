# Homepage Wireframe — v3: Split Persistent

**Generated:** Claude (Sonnet), August 2026
**Relationship to prior concepts:** The most structurally different of all four round 3 concepts — a different navigational paradigm, not just a different visual arrangement of the same one.
**Tested against:** Nicole's round 2 design review ("give me a few very new ones"), the contact/footer redundancy question (answered differently here than in the other three)
**Human curation applied:** None yet — pending Nicole's review.
**Shared Components used:** Logo-placeholder pattern from `Shared Components/README.md`, adapted for a vertical stack. Nav and footer patterns are **not** used as-is — this concept's whole premise is restructuring where nav and contact live.

---

## What This Iteration Tests

Whether identity, navigation, credibility, and contact can all live in a persistent, always-visible left panel — never requiring a scroll or an anchor-jump to reach — while only Work, About, and Selected Collaborations scroll in a right-hand content panel. This is a genuinely different interaction model, not a layout variation on the single scrolling column every other concept (round 1 through round 3) has used.

## Design Rationale

Every other concept relies on the same underlying mechanism: scroll down, use anchor-jump nav to skip around. This concept removes that requirement for anything identity-related — name, positioning statement, nav, credibility logos, and contact are all visible at all times in the sticky left panel, regardless of how far a visitor has scrolled through Work or About on the right.

This produces a second, structurally different answer to the contact/footer redundancy question raised in round 2. The other three round 3 concepts solve it by merging Contact into an expanded footer at the bottom of the page. This concept solves it differently: contact is already permanently visible in the left panel throughout, so there's no need for a dedicated Contact section *or* a heavy footer at the bottom of the scrolling content — just a minimal closing note pointing back to the panel, so the page doesn't just trail off with nothing.

## Strengths

- Genuinely different navigational logic, not a reskin — this is the strongest possible answer to "give me a few very new ones."
- Solves the contact/footer redundancy question in a completely different, arguably more elegant way: contact is never something you have to scroll to find, so there's nothing to duplicate.
- The persistent panel does real work for the "systems thinking" positioning — the structure itself demonstrates a considered information architecture decision, not just content about one.

## Weaknesses

- The most complex responsive behavior of any concept so far — the sticky split only makes sense on wider viewports; on mobile it has to fully restructure into a stacked layout, which is a bigger transformation than any other concept requires. This is flagged but not deeply refined this round, consistent with staying focused on desktop per Nicole's current review scope.
- The identity panel is doing a lot of jobs at once (branding, headline, nav, credibility, contact) in a fairly narrow 380px column — worth checking in review whether it feels considered or cramped at wireframe fidelity.
- This is the biggest structural commitment of the four concepts — if chosen, it has more downstream implications for the Design System and eventual build than a single-column layout would, since it's a genuinely different template shape, not a variation within one.

## Research Informing This Direction

- **Nicole's round 2 design review (this session):** direct source for pursuing a genuinely different structural idea rather than another single-column variation.
- **Information Architecture, Section 1 (Navigation):** the non-negotiable requirement that all four primary destinations (Work, About, Contact, Resume) stay reachable without exception is satisfied here differently than the IA originally envisioned — worth flagging explicitly, since this concept answers that requirement through permanent visibility rather than through nav links.

## Who This Serves Best

**Systems-minded Directors and Engineers** — the persona most likely to read this structural choice itself as a signal of design maturity, consistent with the "Design Engineer" positioning threads elsewhere in the research. Riskiest for a Recruiter on a narrow or unfamiliar viewport, given the responsive complexity noted above.

## Outcome

**Status: Discarded** as a whole-page structural direction, per Nicole's round 3 design review (August 2026). **Sparked a related, differently-scoped idea.**

**Feedback:** "This was interesting for sure, but I don't think it quite aligns with what I envisioned. It is interesting though because I actually had something similar in an old version of my portfolio for my about section where I had a player card of myself stay persistent and then my credentials would scroll next to it. This reminds me that I do really like the idea of a player card of myself."

The persistent split-panel mechanism at the whole-homepage level is discarded. What survives is scoped much more narrowly: a "player card" (photo, name, title) specifically within the About section — not a persistent whole-page layout mechanism. This is a new requirement carried into every round 4 concept, not a continuation of this concept's structural premise. See Decision Log, 2026-08-04 (round 3 entry) and `v4-*` notes for the player card's actual implementation.
