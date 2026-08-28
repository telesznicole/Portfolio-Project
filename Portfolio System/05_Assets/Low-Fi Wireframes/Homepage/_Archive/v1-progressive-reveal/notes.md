# Homepage Wireframe — v1: Progressive Reveal

**Generated:** Claude (Sonnet), August 2026
**Tested against:** Experience Blueprint §2.5 (progress indicator, originally scoped to case studies), Design Exploration/Navigation, Design Exploration/Motion
**Human curation applied:** None yet — first pass, pending Nicole's Tier 2 review per Wireframing Workflow §5.

---

## What This Iteration Tests

A genuinely open structural question raised by the IA's move to a single continuous-scroll homepage: the Experience Blueprint specified a dynamic progress indicator for long *case studies*, reasoning it solves disorientation in long-form reading — but it never asked whether the homepage itself, now a single long scroll spanning four sections, has the same disorientation risk. This concept tests bringing that pattern up a level, to the homepage itself.

## Design Rationale

Sneha's navigation research directly informed the original case-study progress indicator; this concept asks whether that same functional justification — wayfinding in a long scroll — applies just as legitimately to the homepage post-Revision-2. A visitor arriving via a deep link (e.g., a shared `/#about` link from a LinkedIn message) may land mid-page with no sense of what else exists above or below; a persistent indicator answers that immediately, and doubles as a quick-jump control.

The hero is deliberately sparse here — a single headline and one CTA — because the indicator itself is meant to imply "there's more, and here's where you are in it," reducing the need for the hero to front-load a reason to keep scrolling.

## Strengths

- Directly solves a real orientation gap that the current Experience Blueprint doesn't address — the homepage-as-single-scroll is new since Revision 2, and this is the first concept to treat its length as a wayfinding problem worth solving.
- The indicator is implemented as reflection, not control — it uses `IntersectionObserver` to track scroll position and never hijacks native scroll physics, keeping it clearly on the right side of the Tier 1 "no scroll-jacking" rule.
- Degrades gracefully: if JavaScript fails to load, the dots simply stay inactive and the anchor links underneath still function via ordinary browser anchor-jump behavior — nothing essential depends on the script running.

## Weaknesses

- Genuine open question, not yet resolved: does a four-section homepage actually need this, or does it solve a problem nobody has at this length? The case-study use case (a long, dense, multi-thousand-word read) is a much clearer fit than a four-section homepage a Recruiter might spend 30 seconds on.
- The fixed side-rail position needs real content to sit next to it at every breakpoint — on mobile, it has to move to a horizontal strip (handled here), and that horizontal version competes for space with the sticky header immediately below it, which feels crowded even at wireframe fidelity.
- Adds a small amount of real implementation complexity (a JS observer, two rail layouts) for a benefit that's more valuable to a Director doing a full read than to the Recruiter persona the funnel currently prioritizes highest.

## Research Informing This Direction

- **Design Exploration — Navigation/Sneha:** direct source for the dynamic progress-indicator pattern.
- **Experience Blueprint §2.5:** where this pattern was originally scoped to case studies only — this concept explicitly tests extending it.
- **Interaction Principles research:** the specific justification for implementing it as reflection-only (IntersectionObserver), never as scroll control.

## Who This Serves Best

Serves a visitor doing a **full, engaged read of the entire homepage** best — plausibly Hiring Managers or Directors reading linearly rather than jumping straight to Work. Less relevant to a Recruiter's fast scan, where the page likely isn't long enough yet for the indicator to earn its keep.

## Outcome

**Status: Discarded**, per Nicole's round 2 design review (August 2026), resolving the open question this concept raised.

**Feedback (round 2, on the refined version):** "I do like the progression indicators, but I also wonder if they're necessary on this page. I think they could be more useful for the case studies."

**Resolution:** Agreed, with reasoning. The homepage has only four sections, and the primary nav already provides direct jump-to-section access — the indicator was answering a wayfinding question that doesn't meaningfully exist at this length. A long case study, with no internal nav landmarks and far greater length, is the situation this pattern actually solves. The indicator is dropped from homepage exploration going forward and reserved for testing in the `Case Study` wireframe folder when that phase begins. See Decision Log, 2026-08-04 (round 2 entry).
