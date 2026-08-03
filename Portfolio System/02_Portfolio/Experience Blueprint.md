# Experience Blueprint

> Status: 🔒 Implementation Document
> This is the bridge between the Information Architecture and visual design. It defines how the portfolio should *feel* to move through — purpose, pacing, motion, and disclosure — without specifying layout, typography, color, or branding. Every future wireframe should be checked against this document before it's checked against a design system.

---

## How to Use This Document

The IA defines *what exists and where*. This document defines *how it behaves and why* — the narrative arc a visitor moves through, how much information they encounter at each moment, where motion and interaction earn their place, and how the experience should differ (not degrade) on mobile. Nothing here should be read as a layout instruction. If a recommendation below implies a specific visual treatment, that's a signal for the design system phase to interpret, not a spec to copy directly.

---

## 1. Narrative Progression

The portfolio should read as one continuous argument, not a collection of pages that happen to be linked together. The argument is: *this person thinks in systems, cares about the people on the other end of their decisions, and can prove it under real constraints.*

**The arc, in order of what a visitor encounters:**

1. **Arrival (Hero)** — immediate legibility. Who you are, what you do, why it's credible. No persuasion yet, just clarity.
2. **Evidence (Work)** — the claim gets tested. Curated proof, ordered for maximum credibility first (Meta), then depth (Feminist UX), then delivery-under-constraint (Terra Dotta), then breadth (Selected Collaborations).
3. **Context (About)** — now that the work has spoken, a brief human throughline: how you think, briefly why, with an open door to go deeper (How I Work) for anyone who wants to.
4. **Invitation (Contact)** — the natural close. Not a hard sell, just an open, low-friction door.
5. **Depth (Case Study pages)** — for anyone who clicked in from Work, a slower, denser read that rewards the time spent, ending honestly (retrospective) rather than triumphantly.

This mirrors the Manifesto's instruction that design should reduce friction and never distract from the story being told, and the Product Vision's goal that the interface disappear in favor of the work. Every section below should be evaluated against a simple question: *does this move the argument forward, or is it decoration standing in the way of it?*

---

## 2. Section-by-Section Experience

### 2.1 Hero (top of homepage)

**Purpose:** Establish role clarity and credibility within seconds. This is the section a Recruiter's entire decision may rest on.

**Narrative role:** The opening line of the argument — states the claim, doesn't yet prove it.

**Pacing & density:** Lowest density on the entire site. One idea, stated once, clearly. Resist the temptation to front-load everything here (Abdulqahar's approach of showing status, stack, and contact all at once was noted in your own observations as effective but "a tad busy" — the lesson is the *instinct* to be upfront is right, the *execution* needs restraint).

**Interaction & motion opportunities:**
- A brief, purposeful loading/reveal sequence is worth considering — but only if it resolves well under the sub-1.5-second performance budget already locked into the IA. If it can't be both meaningful and fast, cut it. A loading sequence that delays content is a liability, not a flourish, regardless of how polished it looks.
- Subtle ambient motion (a soft background shift, not a scripted animation sequence) can signal craft without asking for attention — several of your saved references use this well precisely because it doesn't compete with the headline text.
- Avoid parallax or scroll-triggered hero effects that delay the visitor's ability to read the core claim.

---

### 2.2 Work (anchor section, homepage)

**Purpose:** Convert curiosity into a click. This section carries the heaviest evidentiary weight on the homepage.

**Narrative role:** The proof phase of the argument. Order matters — it should read as escalating credibility, not a random grid.

**Pacing & density:** Medium. Each flagship card needs just enough density to justify a click (title, one proof point, thumbnail) without requiring a read. Selected Collaborations should sit at a deliberately lower density than the flagship cards — they're recognition signals, not arguments.

**Interaction & motion opportunities:**
- Full-bleed or near-full-bleed treatment for flagship project imagery earns real visual weight here — this is one of the moments in the whole site where immersion is appropriate, because it's showing real work, not decorating the interface.
- Subtle hover response on cards (functional: signals clickability, nothing more) — the same restraint your own notes praised in the strongest homepage references and criticized in the weakest.
- Selected Collaborations can carry a lighter personality touch here — a small moment of eccentricity or wit in a hover state or a "see more" affordance is appropriate at this lower-stakes density, in the spirit of the tongue-in-cheek button states you flagged approvingly. This is a good place for a hint of personality precisely because nothing critical depends on the visitor noticing it.

---

### 2.3 About (anchor section, homepage)

**Purpose:** Humanize the claim already proven by the Work section. This is not where credibility is built — it's where it's made memorable.

**Narrative role:** The turn from *what you did* to *how you think*. Brief by design — this is context, not a philosophy essay.

**Pacing & density:** Low. Two to three sentences of substance, not a scroll-length personal statement. If it starts to feel like reading is required rather than skimming, it's grown past its role.

**Interaction & motion opportunities:**
- A compact, at-a-glance personal summary (a "player card" style snapshot of role, focus, and a credibility marker or two) is a strong fit here — it does the "everything up front" job your notes responded well to, but scoped tightly enough to avoid the clutter risk you also flagged.
- A brief, honest quote from a collaborator can do real trust-building work in very little space, if one exists that's genuinely earned and not manufactured for effect.
- Any metric shown here (years of practice, number of collaborations) must be real and verifiable — this section should never introduce a number that wouldn't hold up if someone asked about it directly.

---

### 2.4 Contact (anchor section, homepage)

**Purpose:** Remove every remaining reason not to reach out.

**Narrative role:** The close. Should feel like an open door, not a form to fill out.

**Pacing & density:** Lowest density on the page next to the Hero. Email, LinkedIn, GitHub — nothing else competing for attention here.

**Interaction & motion opportunities:** Minimal by design. This section earns trust through directness, not craft. Resist adding motion here simply because every other section has some — restraint itself is the right choice.

---

### 2.5 Case Study Pages (standalone)

**Purpose:** Reward the visitor who chose to go deeper. This is where the real evaluation — Hiring Manager, Director, Senior Designer, Engineer — actually happens.

**Narrative role:** A complete story arc in miniature: context, tension, decision, honest reckoning. The mandatory retrospective section established in the IA is the emotional and credibility peak of the case study, not an afterthought — it should be paced and presented as the most considered part of the page, not the most compressed.

**Pacing & density, mapped to the IA's three layers:**
- **Layer 1 (Executive Summary):** Must resolve within the first viewport — your own notes flagged this exact quality (pertinent information visible without scrolling) as one of the strongest patterns you found, and its absence as a real weakness elsewhere. Density here is moderate but complete: sponsor, role, problem, proof, all visible without interaction.
- **Layer 2 (Full Narrative):** Density increases substantially. This is where sustained reading is expected and appropriate — pacing should still avoid dense, uninterrupted blocks. Visual evidence (real artifacts, not decorative diagrams) should appear at a rhythm that gives the reader a break roughly as often as a new idea is introduced.
- **Layer 3 (Deep/Technical):** Highest density, fully optional. A visitor who doesn't scroll this far shouldn't feel they missed something essential — this layer exists for the reviewer actively looking for it.

**Interaction & motion opportunities:**
- A dynamic progress indicator (a subtle marker showing position within a long case study) is worth adopting — it directly answers the disorientation problem your own notes identified in long-form case studies, and it's functional wayfinding, not decoration.
- A prominent, well-placed link to a live product or prototype (where one exists) earns real estate here — your notes responded well to this exact pattern.
- **Explicitly rejected:** password-gating a fuller version of an NDA-restricted case study for select viewers. This appeared in your own research notes as an appealing idea, but it directly contradicts the zero-password-gate constraint already locked into the IA, and the broader hiring research is unambiguous that password barriers cause evaluators to simply move on. The correct handling of NDA-restricted work is sanitized/white-labeled framing, already specified in the IA — not a gated alternate version.

---

### 2.6 How I Work (standalone, unlisted)

**Purpose:** Reward the specific reviewer who goes looking for process depth — primarily Engineers and systems-minded Directors.

**Narrative role:** A coda, not a chapter. It should feel like a bonus for the curious, not a page the core argument depends on.

**Pacing & density:** Can run denser and more technical than any other page on the site — this is the one page where a reviewer has explicitly opted into depth, so there's no need to soften the pacing for a skimming visitor.

**Interaction & motion opportunities:** Minimal. This page earns trust through clarity of thinking, not craft. Motion here would compete with, rather than support, the content.

---

### 2.7 Resume (standalone)

**Purpose:** Fast, complete, shareable utility.

**Narrative role:** Outside the main narrative arc — a reference document, not a story beat.

**Pacing & density:** High information density is appropriate and expected here; this is the one page where a visitor wants everything, fast.

**Interaction & motion opportunities:**
- Presenting resume entries as expandable — collapsed by default, with the option to reveal more detail per entry, alongside a direct PDF download — is a strong fit. It gives Recruiters (who want the PDF) and deeper reviewers (who want detail without leaving the site) both what they need without forcing a choice between the two formats.

---

### 2.8 404

**Purpose:** Recovery, not dead-end.

**Pacing & density:** Minimal. A single clear path back to the homepage.

**Interaction & motion opportunities:** None warranted. This is a utility moment; treat it as one.

---

## 3. Progressive Disclosure Strategy

The four-layer model from the IA holds here, with one addition: **density and pacing should increase together as a visitor moves deeper, and never before.** A visitor should never encounter a spike in density before they've made a deliberate choice to go further (a click, not a scroll past a section boundary they didn't intend to cross).

| Layer | Site location | Pacing character |
|---|---|---|
| 0 — Index | Homepage sections | Fast, low-density, skimmable in seconds |
| 1 — Executive Summary | Case study entry | Complete but compact, resolves in one viewport |
| 2 — Full Narrative | Case study body | Sustained reading pace, evidence-paced |
| 3 — Deep/Technical | Case study depth, How I Work | Dense, technical, fully opt-in |

The visitor should always feel like they're choosing to go deeper, never like depth was forced on them.

---

## 4. Desktop vs. Mobile Considerations

The IA already requires full functional parity on mobile — this section governs how the *experience*, not the content, should adapt.

- **Hover-dependent interaction has no place being essential on mobile.** Anything that reveals meaningful content on hover (a card detail, a cursor-triggered word) needs a functional touch equivalent — either always-visible on smaller viewports, or revealed on tap. Nothing that matters to comprehension should be hover-only anywhere, but this is especially critical on mobile, where hover doesn't exist at all.
- **Loading and reveal sequences should be shorter or skipped on mobile**, where connection speed is more variable and the performance budget is tighter. A sequence that feels tasteful on a fast desktop connection can feel like an obstacle on cellular.
- **Full-bleed imagery needs deliberate cropping consideration for narrow viewports**, not simple scaling — an image composed for a wide desktop hero will lose its intended impact if it's just shrunk.
- **The anchor navigation must collapse into something usable on a small screen** without losing one-tap access to Work, About, Contact, and Resume — this is a functional requirement carried over directly from the IA's navigation rules, not a new one.
- **Progress indicators in long case studies matter more on mobile, not less** — disorientation in a long scroll is a bigger risk on a small screen than a large one.
- **Custom cursor effects are a desktop-only concept by nature** — they should never be treated as something to "translate" for mobile; simply omit them there without trying to find an equivalent.

---

## 5. Design Principles Every Future Wireframe Should Satisfy

1. **Every section must earn its place in the funnel.** If a section doesn't move the argument forward for at least one target audience, it doesn't belong.
2. **Motion is functional before it is expressive.** If an animation doesn't clarify, orient, or signal interactivity, it should be cut, no matter how polished it looks in isolation.
3. **Native scroll physics are never sacrificed for a stylistic effect.** No scroll-jacking, no parallax that misaligns content with intent.
4. **No layer of information is reachable only through hover or gated behind a password.** This applies without exception, including for NDA-restricted work.
5. **Personality shows up through restraint and specific detail, not through volume of effects.** One well-placed moment of wit or craft says more than five competing for attention.
6. **Full-bleed and immersive treatment is reserved for moments that deserve it** — primarily real project work — not applied uniformly across the site as a stylistic signature.
7. **Every case study resolves its Executive Summary within the first viewport.** No exceptions — this was flagged repeatedly, in both directions, as a make-or-break pattern.
8. **Density increases only after a deliberate choice to go deeper**, never as a surprise mid-scroll.
9. **WCAG 2.1 AA and reduced-motion support are baseline requirements for every interaction pattern**, evaluated at the wireframe stage, not retrofitted later.
10. **Mobile is a parity requirement, not a simplified fallback.** Anything essential on desktop must have a genuinely functional (not merely present) equivalent on mobile.
11. **Any pattern borrowed from inspiration must be re-justified on functional grounds before it's adopted** — "this looked good elsewhere" is never sufficient reasoning on its own.

---

## 6. Traceability to the Design Exploration Library

This blueprint draws directly on patterns your own research repeatedly rewarded: pertinent information resolving within the first viewport, subtle and purposeful hover motion, a dynamic progress indicator for long-form reading, expandable resume entries, honest and specific writing voice, and restrained personality at low-stakes moments rather than high-stakes ones.

It deliberately excludes patterns your own notes flagged as failures even when the source was otherwise strong — visual busyness without hierarchy, custom cursor effects with perceptible lag, oversized or disproportionate footers, and sections without enough separation to read as distinct. It also overrides one appealing idea (the password-gated NDA workaround) where it conflicted with a constraint already locked into the Information Architecture — a reminder that inspiration informs this blueprint, but the locked strategy governs it.