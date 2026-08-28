# Homepage Wireframe — v3: Integrated Hero

**Generated:** Claude (Sonnet), August 2026
**Relationship to prior concepts:** Direct refinement of `v2-editorial-wide` — the "familiar elements that have gone over well" pick for round 3, per Nicole's explicit request to include at least one.
**Tested against:** Nicole's round 2 design review, Experience Blueprint §2.1
**Human curation applied:** None yet — pending Nicole's review.
**Shared Components used:** Nav, footer base, and logo-placeholder pattern from `Shared Components/README.md`.

---

## What This Iteration Tests

Two specific, concrete fixes requested in round 2 review: (1) whether the hero can integrate a "Trusted by" credibility lockup directly, using hierarchy to stay clean, per the external portfolio Nicole referenced; and (2) a single consistent content width used everywhere except the hero, replacing the three-or-four-width inconsistency Nicole flagged in `v2-editorial-wide`.

## Design Rationale

**Hero integration.** Rather than a separate credibility band section below the hero (as in `v2-editorial-wide`), the "Trusted by" lockup now lives inside the hero itself, directly beneath the headline. Hierarchy is carried entirely by scale and color weight: the headline is large and full-strength black, the "Trusted by" label is small, uppercase, and light gray, and the logo placeholders are deliberately quieter (lighter border, lighter text) than every other logo treatment on the page. This is the direct test of the pattern Nicole described — headline, then a quiet trusted-by lockup, kept clean through hierarchy rather than separation.

**One content width.** Every section from Work through the footer now shares a single `.content-shell` class (max-width 1200px), rather than each section defining its own width as in `v2-editorial-wide`. The hero remains the one deliberate exception — it's meant to feel expansive, and that contrast is now intentional rather than accidental. Text-heavy content (About's paragraph, pull-quote) still gets a comfortable reading line-length, but through an internal `max-width` on the text elements themselves, not through the section's outer container being a different size. The page should now read as having one consistent structural rhythm, with hero as the sole, deliberate exception.

**Contact merged into footer.** The standalone Contact section is gone. The footer is now a single expanded closing band: a left-aligned block (eyebrow, a one-line "open to full-time roles" statement, and the email address prominently) paired with the standard link row on the right, in one visual unit rather than two sequential ones.

## Strengths

- Directly answers both concrete pieces of feedback from round 2 — this isn't a reinterpretation, it's the literal fix.
- The hero now does more work per screen without feeling denser, because the added content (credibility) is explicitly subordinate in weight to the headline, not competing with it.
- The page finally has a legible, explainable width logic: expansive hero, one consistent width for everything else.

## Weaknesses

- This is the least "new" of the four round 3 concepts by design — it's a refinement, not a variation, and shouldn't be mistaken for satisfying Nicole's request for genuinely different options on its own.
- The hero is now doing two jobs (headline + credibility) instead of one — worth confirming in review that it still reads as "breathable," which was the specific quality Nicole praised in `v2-editorial-wide`'s hero, rather than a regression toward round 2's density complaints.
- The footer's dual-purpose layout (statement + email on the left, links on the right) is new and untested — worth scrutiny on whether it reads as a considered closing moment or just a wider footer.

## Research Informing This Direction

- **Nicole's round 2 design review (this session):** the direct and sole source for every change in this concept.
- **Experience Blueprint §2.1 (Hero):** the original hierarchy principle ("one idea, stated once, clearly") this concept tests whether it can be responsibly stretched to two ideas without breaking.

## Who This Serves Best

Same audience as `v2-editorial-wide` — Design Directors and Senior Designers who respond to breathing room — with a slightly stronger credibility signal reaching Recruiters and Hiring Managers earlier, since trust-building now happens in the very first viewport instead of the one after it.

## Outcome

**Status: Superseded**, not discarded. This was the confirmed leading direction ("this is getting very close to what I'm aiming for... there was nothing I wanted to criticize") that every subsequent round built directly on. Archived now that `v5-grid-refined` is the confirmed final direction (2026-08-04) and this is no longer an active reference point.
