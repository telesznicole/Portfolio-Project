# How I Work Wireframe — v1: Process Timeline

**Generated:** Claude (Sonnet), August 2026
**Base:** New — second concept of round 1.
**Tested against:** Experience Blueprint §2.6, Information Architecture §3.4, Decision Log.
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** nav, footer, `.content-shell`, corner-radius system, and typography scale copied verbatim. The row pattern (`.hiw-row`, label column + content column) is reused directly from the Resume template's Education/Experience rows — a labeled sequence read top to bottom is the same shape of content here as it is there.

---

## What This Concept Tests

Whether the page reads best as a literal, chronological account of how this specific portfolio was built — treating "how I work" as a documented case study of the process, with real phases and real, checkable numbers, rather than an abstract statement of philosophy.

## Content Sources

Every phase and figure here is drawn from this project's actual, dated history — nothing is illustrative or invented:
- **01 Discovery** and **02 Foundations** reflect the Decision Log's earliest entries: "Complete Discovery before beginning design" and "Complete planning artifacts before designing pages" (Manifesto → Questions → Knowledge Base → Deep Research → PRD → IA → Design System → Build).
- **03 Design Exploration** reflects the Decision Log's "Organize inspiration by design problem rather than by designer" decision.
- **04 Wireframing** cites two real, verifiable numbers: nine rounds of Homepage iteration and seven rounds of Case Study Template iteration, both fully traceable through their respective `_Archive/` folders and Decision Log entries — chosen deliberately over a vaguer claim like "many rounds of iteration," since specific, checkable numbers are exactly the kind of proof a systems-minded reviewer (this page's target audience per Blueprint §2.6) tends to trust more than a general claim.
- **05 Build** reflects the Wireframing Workflow document's own stated rationale for building wireframes directly in HTML/CSS rather than Figma.

## Why This Structure, Specifically

Unlike `v1-principles-essay`'s abstract claims, this concept treats the page itself as evidence — the reader isn't just told the process is rigorous, they're shown the literal shape of it, including real numbers they could go verify by opening this repository's own Decision Log. This is the most literal answer to the Decision Log's own still-open idea from 2026-07-29: "The portfolio itself may become a case study documenting the AI-assisted design process."

## What Was Deliberately Not Reused

No connecting line or stepper visual runs down the label column, even though the row pattern reads like a natural fit for one. That mechanism (Case Study's marker + connecting line) was purpose-built for scroll-tracked in-page navigation — a real interaction. Reusing its visual shape here with no navigation behind it would be decoration standing in for function, which Blueprint §2.6 argues against for this specific page. The numbered label alone ("01 Discovery") carries the sequence without borrowing a pattern that isn't doing its actual job.

## Outcome

**Status: Iterate.** Pending Nicole's review alongside `v1-principles-essay` and `v1-division-of-labor`.

🗄️ **Archived — refined into `v2-decision-log-excerpt`.** Nicole's round-2 feedback applied to all three v1 concepts equally: "neither of these pages excites me though and they feel like too much reading and words... too many words, not something that can be skimmed." The prose-paragraph-per-phase format is discarded, but this file's actual content strategy — real, checkable numbers pulled from the Decision Log (nine Homepage rounds, seven Case Study rounds) — is exactly right and is salvaged directly into `v2-decision-log-excerpt`, restructured as an expandable, skimmable feed of real logged decisions instead of five paragraphs of prose.
