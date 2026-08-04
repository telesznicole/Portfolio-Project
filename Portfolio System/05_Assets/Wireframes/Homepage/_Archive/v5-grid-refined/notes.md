# Homepage Wireframe — v5: Grid Refined

**Generated:** Claude (Sonnet), August 2026
**Relationship to prior concepts:** Direct evolution of `v4-refined-integrated`, with every global fix from the round 4 review applied, plus the first of two newly-requested Work layout variations — a 2-wide grid.
**Tested against:** Nicole's round 4 design review; Decision Log entries 2026-08-04 (round 4)
**Human curation applied:** None yet — pending Nicole's review.
**Shared Components used:** Nav base from `Shared Components/README.md`; logo-placeholder and inline-logo patterns adapted per this round's requirements.

---

## What This Iteration Tests

Whether the full set of round 4 refinements — bottom-anchored hero, inline trusted-by sentence, spread stats banner, enlarged player card, locked logo-wall Collaborations, reined-in bold titles, no divider lines, and substantially more breathing room — reads as considered once assembled together, using a straightforward 2-wide grid for Work as the specific layout being tested here.

## Design Rationale

**Hero:** Headline and the trusted-by sentence are now one anchored unit at the bottom of the hero (`align-items: flex-end`), leaving the entire top ~50% of the hero open — exactly the whitespace-for-later-design-use Nicole has asked for twice now. "Trusted by" is a real sentence with `.inline-logo` marks embedded directly in the text, recovered from the discarded `v3-narrative-column` and reapplied narrowly to this one moment, as requested.

**Section titles:** Set at `clamp(32px, 5vw, 60px)` — roughly half the scale tested in `v4-bold-typographic`. Still unmistakably bold and considerably larger than a quiet eyebrow, but sized so a short 2–3 word phrase would still sit comfortably, directly addressing the scale tension Nicole flagged.

**Work:** A straightforward 2-column grid, image on top, text beneath, no special treatment for any one project (deliberately not reintroducing a lead-tile/masonry pattern, since that was part of what got discarded alongside `v3-asymmetric-editorial`'s Work section). Three items in two columns means the third sits alone in its own row — plain, unforced.

**Spacing:** Every major section now uses substantially more top/bottom padding (Work: 140/100px, About and Collaborations: 140px bottom, footer: 100px top) and all `border-top` divider lines are gone entirely — sections are separated purely by the size of the gap between them now.

**Stats banner and footer — the pushback:** Both got real breathing room increases, but neither is forced to a full viewport height. A three-number strip and a closing footer don't have enough content to fill 90vh without producing obviously artificial empty space — this is the intentional, flagged exception to the one-viewport-per-section instinct, not an oversight.

## Strengths

- Directly resolves every specific piece of feedback from the round 4 review — hero anchoring, trusted-by format, stats spread, player card size, title scale, divider removal, breathing room.
- The grid Work layout is the simplest and most predictable of the two new variations requested — a safe, legible option to compare against the more ambitious full-bleed treatment in `v5-fullbleed-immersive`.
- Section titles now genuinely read as "bold and confident" rather than "overwhelming," which was the specific complaint about round 4.

## Weaknesses

- The 2-wide grid is the least visually dramatic of the Work options tested across this whole project — worth weighing against `v5-fullbleed-immersive` on whether "grid with text underneath" undersells the work relative to a more immersive treatment.
- Breathing room is generous but intentionally short of true one-viewport-per-section for the stats banner and footer — worth confirming this reads as reasoned restraint rather than as not fully committing to the request.
- This concept doesn't test the small/quiet title alternative Nicole asked to keep open — see `v5-quiet-titles` for that comparison instead.

## Research Informing This Direction

- **Nicole's round 4 design review (this session):** the direct source for every change in this concept.
- **Decision Log, 2026-08-04 (round 4 entries):** the locked specification this concept implements.

## Who This Serves Best

Same audience as the validated foundation throughout round 4 — this concept's job is confirming the refinements read well together, not shifting audience fit.

## Outcome

**Status: Superseded**, not discarded. Confirmed as the winning foundation ("Super solid low-fi wireframe. All of the elements are pretty much what I've asked for.") and fully carried forward through `v6-refined-final` and `v7-credibility-flow`. Archived now that later iterations supersede it directly.
