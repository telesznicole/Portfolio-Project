# Homepage Wireframe — v2: Editorial Wide

**Generated:** Claude (Sonnet), August 2026
**Revises:** `v1-editorial-escalation` (active, not archived — this is a refinement, not a replacement; keep both for comparison)
**Tested against:** Nicole's round 1 design review, Experience Blueprint §2.1–2.4, Wireframing Workflow §9 (Shared Components lineage)
**Human curation applied:** None yet — first pass of round 2, pending Nicole's review.
**Shared Components used:** Nav, footer, and logo-placeholder pattern copied in from `Shared Components/README.md` per Wireframing Workflow §2 (copy-in, not linked).

---

## What This Iteration Tests

Whether v1-editorial-escalation's breathing room can be preserved while fixing its two specific complaints: content squeezed into a narrow center column, and the left/right alternating image position on each project feature. It also tests reintroducing the credibility band and pull-quote (both liked from the discarded Credibility-First concept) inside a paced sequence, rather than crammed into the hero.

## Design Rationale

This is a direct, line-by-line response to feedback, not a fresh concept. Three specific changes from v1:

1. **Wider canvas.** The Work section's `max-width` moved from 900px to 1400px, and the hero now spans nearly the full viewport width with generous side padding (64px) rather than being centered into a narrow column. The content still has margins — it isn't edge-to-edge — but it now uses the space a large desktop monitor actually offers instead of collapsing into the middle third of the screen.
2. **Consistent single orientation.** All three flagship features now use the same image-left, text-right layout. The alternating pattern from v1 is gone entirely — this was a small thing Nicole flagged, but it's a real pacing decision: alternation implies a rhythm that wasn't intentional, consistency reads as more deliberate.
3. **Full-viewport hero, nothing else in it.** The hero is now `min-height: 88vh` — close to Nicole's explicit ask to "play around with the viewport being just the hero and then scrolling for those projects." A subtle scroll cue replaces any competing content. Credibility signals (logo band, quick facts) moved to their own paced moments below, rather than crowding the hero itself.

The credibility band and pull-quote — both explicitly liked from the discarded Credibility-First concept — are reintroduced here in sequence, not all at once: logo band right after the hero (answers "prove it" immediately), pull-quote inside a now fully-developed About section (answers "who is this person" later, once Work has already done its job). This is the "experiential scroll... naturally answering the next question" structure Nicole asked for directly.

About and Selected Collaborations are both substantially developed per the Decision Log entry from this review: About now has a pull-quote, a fuller bio paragraph, and a simple quick-facts list; Selected Collaborations is now a spaced list of logo + role + contribution rows rather than a bare bulleted list.

## Strengths

- Directly resolves both specific complaints about v1 (narrow column, alternating orientation) without abandoning what worked about it.
- The credibility band and pull-quote now sit in a sequence that maps to a natural question order, addressing the exact complaint about Credibility-First's "littered" information.
- About and Selected Collaborations finally have enough real structure to actually evaluate pacing and hierarchy decisions around them — the round 1 versions were too thin to judge properly.
- Logo placeholders (introduced in Shared Components this round) replace plain text company names throughout, improving recognition speed per Nicole's explicit request.

## Weaknesses

- This is now a fairly long page — hero at 88vh plus a credibility band plus three large feature blocks plus a developed About plus a developed Collaborations section adds up to substantially more scroll distance than v1 had. Worth checking against Concept 4's original disorientation question even though this concept doesn't include a progress indicator itself.
- The credibility band, while intentionally quiet, is still a new section that didn't exist in v1 — worth confirming it doesn't reintroduce any of the "too many things happening" feeling Nicole flagged elsewhere, even at low density.
- Quick facts list under About is a new element not tested in any round 1 concept — untested whether it reads as useful context or as another stat-strip in miniature.

## Research Informing This Direction

- **Nicole's round 1 design review (this session):** the primary input for every change in this iteration — this is direct-feedback-driven refinement, not new research synthesis.
- **Design Exploration — Case Studies/Belle & Layout/Andrea:** still the underlying source for the breathing-room instinct this concept continues to build on.
- **Design Exploration — Homepage/Andrea:** source for the pull-quote pattern, now placed with better sequencing logic.

## Who This Serves Best

Same as v1: **Design Directors and Senior Designers**, now with a stronger case that this doesn't come at total expense of Recruiter credibility-building, since the logo band and proof are still present — just paced rather than crammed.

## Outcome

**Status: Superseded**, not discarded. Confirmed positively across rounds 2–4 ("getting very close," "nothing I wanted to criticize") before further refinement moved past it. Archived now that `v5-grid-refined` is the confirmed final direction (2026-08-04) and this is no longer an active reference point.
