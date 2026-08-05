# Case Study Wireframe — v5: Cards Tasteful Refined

**Generated:** Claude (Sonnet), August 2026
**Base:** `v4-cards-tasteful` — this iteration changes exactly one thing.
**Tested against:** Nicole's round-4 review: "I do worry about how we maintain proper hierarchy given that this card is right after the retrospective card... they don't feel distinct enough to not feel like one is a mistake of a replication of the other. I think I like it, but we would just need to refine the hierarchy."
**Human curation applied:** None yet — pending review.
**Shared Components used:** `.engagement-tag` pill, reused for an "Optional" label — the same component the case study title already uses for "Sponsored Engagement."

---

## What This Iteration Tests

Whether giving Retrospective and Deep/Technical genuinely different visual weight — instead of the same border/radius/padding recipe applied twice — resolves the "accidental duplicate" feeling Nicole named, while keeping both as cards.

## The Change

Three changes, all isolated to these two sections:

1. **Retrospective is now the heavier card** — filled with a warm light gray background (`#f5f4f2`), no border. This is the section the Experience Blueprint names as the page's credibility/emotional peak; it should read as the most considered, highest-weight moment, not an outline identical to the section after it.
2. **Deep/Technical stays the lighter card** — outline only (`#e2e2e2`, lighter than the previous `#ddd`), no fill. Its role — optional, lower-stakes, for the reader actively looking for more — now reads as visually lighter than Retrospective's, not equal to it.
3. **An explicit "Optional" tag** sits next to the "A deeper look" eyebrow, reusing the exact `.engagement-tag` pill already established at the top of the page. This states the section's role directly rather than relying on a reader to infer "optional" from box styling alone. **Spacing increased too** — `32px` margin now separates the two cards, up from effectively zero (they previously sat back-to-back at the standard `72px` block gap with no additional signal that they were meant to feel distinct).

## Strengths

- Fill vs. outline is a well-established hierarchy signal on its own — doesn't require a reader to compare border colors closely to tell the sections apart.
- The "Optional" tag borrows a pattern already proven at the top of the same page, reinforcing cohesion rather than adding a new label style.

## Weaknesses

- Introduces the page's first filled (non-white) card background — worth checking this doesn't read as a new, unexplained visual language of its own once seen in context with the rest of the page.
- Retrospective's heading is still deliberately small (`22px`, toned down per the original `v2-bold-type` correction) — worth double-checking the *fill* alone is enough to carry "this is the peak" now that the heading itself isn't doing that work.

## Outcome

**Status: 🗄️ Discarded.** Nicole: "I don't like this. It just introduces too many new styles and feels messy." Confirmed, in hindsight — a filled background, a new outline weight, and a new tag usage were three new visual ideas introduced at once, in a template that had otherwise been converging.

**A mistake worth naming plainly, not just noting:** the "Optional" tag was the wrong call. Nicole: "it feels antithetical to what I would want a hiring manager to see. If it's 'optional' then why bother. Make sure you don't lose sight of the research and rationale and my goals." The Experience Blueprint's Layer 3 framing — "fully optional... a visitor who doesn't scroll this far shouldn't feel they missed something essential" — describes how the *system* should be paced for a visitor who stops early. It was never meant to become a label handed to every visitor, including the ones deciding whether this candidate is worth an interview, that says "this part doesn't matter." Reusing a real research citation correctly in the file's own reasoning didn't stop the actual design decision from working against the stated goal (a Hiring Manager reading the whole page). That gap — citing the right source but drawing the wrong conclusion from it — is the actual lesson here, not just "don't add tags."
