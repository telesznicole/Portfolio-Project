# How I Work Wireframe — v2: Decision Log Excerpt

**Generated:** Claude (Sonnet), August 2026
**Base:** New structure; content strategy carried forward from `v1-process-timeline`.
**Tested against:** Nicole's round-1 review, specifically "we have to make it worthwhile to have its own page."
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** proof-stats row extends the Homepage's `.stats-banner` shape (plain, no border, big number + label); each log entry reuses the same click-to-expand mechanism as `v2-expandable-principles`; `.engagement-tag` reused exactly, unmodified, as the entry-type label.

---

## What This Concept Tests

Whether the strongest answer to "why does this deserve its own page" is showing the reader something that genuinely doesn't exist anywhere else on the site — real, dated entries from this project's own Decision Log, browsable as a curated, expandable feed, rather than a new restatement of philosophy already implied by About.

## Why This Round Happened

See `v2-expandable-principles/notes.md` for the full account of round 1's rejection. This concept responds to the second half of Nicole's feedback specifically — not just "make it skimmable," but her separate note that "something about this page is that we have to make it worthwhile to have its own page." A visitor who already read About has heard the philosophy; this concept gives them something new: verifiable, specific proof of how that philosophy actually plays out, pulled directly from the real project record.

## Content Sources — All Real, Nothing Estimated

The three proof-stat numbers were counted directly from the live Decision Log and wireframe folder structure, not approximated:
- **58** — the literal count of `### Decision` entries in `00_START_HERE/Portfolio Decision Log.md` as of this writing.
- **45** — the literal count of archived (not deleted) wireframe iteration folders across Homepage, Case Study, and Resume's `_Archive/` directories.
- **9** — the Homepage's iteration count, already cited and verified in earlier rounds (Resume, this page's own `v1-process-timeline`).

The four featured log entries are real, curated excerpts, chosen for range rather than for making the project look uniformly successful:
- **Jul 29 / Strategic** — the "treat the portfolio as a product" founding decision, condensed from its original "Why" list.
- **Aug 4 / Self-Correction** — the Homepage round-2 discard, quoting Nicole's actual critique verbatim ("This was a bit of a disappointment") rather than softening it. Deliberately included because a page about process credibility is more convincing showing an honest miss than only showing wins.
- **Aug 5 / QA Fix** — the Case Study Cohesion Audit, summarizing the four real inconsistencies found and fixed.
- **Aug 6 / Bug Fix** — today's own Resume tag-system bug (the `.engagement-tag` overload described in `Resume/v2-refined/notes.md`), included because it's the most recent, most technically specific example available, and because using an example from literally the same day this page was built is itself a small proof point about how current this log stays.

## Why the `.engagement-tag` Reuse, Specifically

Labeling each entry's type (Strategic / Self-Correction / QA Fix / Bug Fix) needed a small classification pill — exactly the job `.engagement-tag` already does on Homepage, Case Study, and Resume. Reusing it unmodified here, for a fourth kind of classification, is a stronger consistency signal than inventing a new tag style would have been.

## Outcome

**Status: Iterate.** Pending Nicole's review alongside `v2-expandable-principles` and `v2-visual-process-gallery`.

🗄️ **Archived — scope misalignment, not a styling issue.** Nicole's review of all three round-2 concepts surfaced a real confusion I'd introduced: "the decision log feels very different from the principles, even though these are supposed to be different variations of the same concept... showing a log of decisions and how I built the website is not what we want here. If I want a case study of my website, I would have it as an actual case study, not on a page titled How I Work." This concept's entire premise — surfacing this project's own build history as the page's content — was the wrong subject for this page, not just an underdeveloped version of the right one. A follow-up alignment conversation (see Decision Log) confirmed the page should be a broad design-philosophy page, not a self-referential process log. No content from this file carries forward; `v3-working-principles` starts from the Manifesto and real work history instead.
