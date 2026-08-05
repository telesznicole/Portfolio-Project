# Case Study Wireframe — v4: Cards Tasteful

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-cards-both` (confirmed standard baseline).
**Tested against:** Nicole's round-3 feedback on `v3-sections-cards`: "as I suspected this is just too much... maybe we can find a few other tasteful and purposeful places to inject that."
**Human curation applied:** None yet — pending review.
**Shared Components used:** The existing `.retrospective` card-border treatment, applied to one additional section on the same structural logic.

---

## What This Iteration Tests

Whether a single, deliberately-chosen additional card placement — rather than universal coverage — reads as purposeful rather than decorative.

## The Change

Only the Deep/Technical section (`#deeper`) gets card treatment: a bordered, `16px`-radius container replacing its previous plain top-border-rule separation. Nothing else changes from `v3-cards-both`.

## Why This Section Specifically

Per the Experience Blueprint §2.5, the case study's content is explicitly modeled in three layers — Layer 1 (Executive Summary), Layer 2 (Full Narrative), Layer 3 (Deep/Technical, "highest density, fully optional... a visitor who doesn't scroll this far shouldn't feel they missed something essential"). Decisions already earned card treatment because its content has a natural two-tier structure; the Deep/Technical section earns it for a parallel reason — it's the one place in the page that is *structurally* a separate layer, not just a different topic. A card boundary makes that boundary visible instead of relying on a divider line and an eyebrow label alone.

## Other Spots Considered, Not Used

Trade-offs was considered (it could theoretically present as paired "gave up / got" items, similar in shape to Decisions) but rejected here — there's no confirmed content structure supporting that split yet, and inventing one risks the same "decoration, not function" problem `v2-cards-body`'s reasoning explicitly warned against. Left as flowing text pending real content.

## Strengths

- Directly grounded in the Experience Blueprint's own layer model, not an arbitrary pick.
- Adds exactly one more card to the page — restrained relative to `v3-sections-cards`'s six-plus.

## Weaknesses

- With Exec Summary, Decisions, Retrospective, and now Deep/Technical all boxed, four of six-plus regions have some card treatment — worth checking this still reads as "sparing" or has started to accumulate past that point.

## Outcome

**Status: 🗄️ Archived — direction set aside.** The hierarchy refinement attempted in `v5-cards-tasteful-refined` introduced more problems than it solved ("too many new styles and feels messy"), and Nicole's final decision reverted the whole line of exploration: "I think I'll have the v3-progress-stylized progress indicator but with the cards-both body" — i.e., Deep/Technical as plain flowing text, not a card. The idea (giving Deep/Technical its own visual treatment) isn't wrong on its face, but two attempts at it didn't land, and this close to final, the simpler `v3-cards-both` treatment won out.
