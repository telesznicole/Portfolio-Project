# Case Study Wireframe — v5: Progress Numbered (Consistent)

**Generated:** Claude (Sonnet), August 2026
**Base:** `v4-progress-numbered` — this iteration changes exactly one thing.
**Tested against:** Nicole's round-4 review: "I don't mind this - it looks pretty clean which I appreciate. One discontinuity though is that the sections are numbered in the progress tracker but not in the content body. If I used this, I think we should have consistency in that."
**Human curation applied:** None yet — pending review.
**Shared Components used:** `.progress-index` typographic treatment from `v4-progress-numbered`, resized and reused for the body headings.

---

## What This Iteration Tests

Whether numbering the body headings to match the sidebar closes the discontinuity Nicole flagged, without disrupting the bold heading scale that's already locked.

## The Change

Each of the six tracked section headings (Context, Constraints, Decisions, Trade-offs, Retrospective, Deeper Look) now carries a small numeral above it (01–06), styled to echo — not compete with — the sidebar's `.progress-index`: muted gray, tabular figures, sitting above the heading rather than inline with it, so the large bold heading text is untouched.

## A Gap Noticed, Not Fixed Here

The Outcome section has no `id` and no entry in the progress nav at all — true in every iteration back to `v1-sidebar-context`. It sits in the body between Trade-offs and Retrospective but was never part of the tracked six-item sequence. Numbering it would break the 01–06 sequence (it would need to be inserted as its own step, becoming a 7-item tracker), which is a bigger structural change than "make the numbers match" — so Outcome stays unnumbered here, consistent with what the sidebar currently tracks. Flagging this separately: worth deciding whether Outcome should get its own tracked step across all variants, independent of which progress-indicator style wins.

Separately, and more minor: the sidebar's label for the last item reads "Deeper Look," while its body heading reads "Edge Cases & System States" — a pre-existing wording mismatch, not something this iteration changes.

## Strengths

- Directly resolves the specific discontinuity Nicole named — sidebar and body now agree.
- Reuses the existing `.progress-index` visual language instead of inventing a second numbering treatment.

## Weaknesses

- Surfaces (without fixing) the pre-existing Outcome gap — worth a decision before this is finalized, regardless of which progress style wins.

## Outcome

**Status: 🗄️ Archived — not chosen, but its best idea carries forward.** Nicole: "If I go the numbered route I would definitely want that consistency... but... how the numbering pairs with the retrospective and deeper look... reads weird and looks off." The numbering-consistency fix this file made didn't resolve the underlying issue — the number badge as a device still visually competes with Retrospective/Deep-Technical's distinct styling. `v3-progress-stylized` chosen instead. What *does* carry forward, unprompted by this file's own subject: the Outcome id/tracking gap this file surfaced while investigating the numbering. Nicole confirmed it should be "fixed everywhere," and it now is, in `v6-final-candidate`.
