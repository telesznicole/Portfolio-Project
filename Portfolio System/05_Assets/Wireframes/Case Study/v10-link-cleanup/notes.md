# v10 — Link Cleanup

## What this iteration was testing

Two corrections from Nicole's review of v9, plus her direct question about expected section length.

## What was generated, and what was human-directed

Both changes are direct, explicit requests:

1. **Bottom "← Back to Work" link removed** from the More Work section. Corrects an assumption made back in v8's `notes.md` — "removed the back button" was read at the time as the top `.back-link` only; Nicole has now confirmed both were removed. No other page (Homepage, Resume, How I Work) is affected by this — it's scoped to Case Study only, matching what she actually changed in her own build.
2. **"See how AI-assisted workflow shaped this project" link removed** from Deep/Technical. No per-project AI-process page exists to link to, and Nicole's own read is that a project's specific AI involvement belongs as inline content in Deeper Look, not an external link to the general How I Work philosophy page. Flagged as a real candidate for Layer 3's still-open content menu ("AI-Assisted Workflow" alongside Edge Cases and Engineering Collaboration) — not added as example content here, since that menu is deliberately still undecided.
3. **Section-length guidance added as HTML comments** near Decisions and Retrospective, reflecting Claude's answer to Nicole's direct question: most sections should stay to one tight paragraph; Decisions reads longer only because it accumulates 2–4 short items, not because any one item should run long; Retrospective is the one section that should be allowed two paragraphs on purpose, per the Experience Blueprint's own framing of it as "the credibility peak of the page."

No CSS changes required for either removal; `.back-to-work` and `.deep-link` rules left in place, unused but harmless.

## Outcome

**Status: 🔒 Promoted — 2026-08-17.** Copied into `_Promoted/Case Study/`, replacing the previous `v7-final-candidate`-sourced promotion. This file remains in place here as the version-history record.
