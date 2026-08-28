# How I Work Wireframe — v5: Converged

**Generated:** Claude (Sonnet), August 2026
**Base:** `v4-progressive-depth`, refined per Nicole's direct feedback on all three round-4 concepts.
**Tested against:** Nicole's round-4 review.
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** the fixed collapse/expand mechanism from `v4-progressive-depth`; `.logo-mark` (now used only inside expansions, not on visible claims); `.quote-card` (from `v4-stepper-visual`); real cross-links per IA §5.

---

## What This Concept Tests

Whether `v4-progressive-depth`'s structure — confirmed as the right direction — becomes a strong finishing candidate once three specific refinements are applied: brand mentions moved out of the visible philosophy statements, "more on this" turned into a real path to the relevant case study, and the closing section replaced with something that actually adds value.

## The Three Refinements, and Why

**1. "More on this" now links to the real case study, where one exists.** Nicole: "since the 'more on this' points at other projects, I'm thinking maybe this can be a way to point the user to that project if it's a case study." Meta, Terra Dotta, and Feminist UX are the three flagship projects with real (or planned) dedicated case study pages, per IA §6's cap of three flagship case studies — each of their expansions now includes a "See the full case study →" link to `/work/[slug]`. FINRA and Hack iX aren't flagship case studies with their own pages (they'd live in Selected Collaborations, per the IA), so their expansions stay text-only — no invented link to a page that isn't planned to exist.

An inline project image inside each expansion was considered and deliberately left out. Nicole flagged this herself as uncertain ("unsure on this... it may get too busy"), and I agree with the instinct: a `.placeholder-img` inside an already-compact expansion panel would compete with the text and the case-study link for a small amount of space, and at wireframe fidelity there's no real image to show yet anyway. Worth revisiting once actual project photography exists and there's real material to judge the density against, rather than guessing with another dashed placeholder box.

**2. Logos removed from the visible principle claims.** Nicole: "I don't really like the logos next to each philosophy because it sounds like my philosophies come from brands — I think the logo should be in the 'more on this' section since that's when we actually mention a brand rather than just my own philosophical viewpoint." Every principle's always-visible text is now purely the philosophical claim, with no brand name or logo attached. `.logo-mark` now appears exactly once per relevant expansion, inside "More on this," where a specific company is genuinely part of what's being said.

**3. Closing section replaced.** Nicole: "we can get rid of the 'Where This Shows Up' section, it doesn't add anything useful and feels redundant" — dropped entirely, and reasonably so: once logos and links live inside the relevant expansions, a closing logo-wall repeating the same five names added nothing new. In its place: a "Read the Work" section with direct links to the three flagship case studies, plus a link to `/#work` — genuinely new content (a clear next step for an engaged reader), not a recap. The `.quote-card` Nicole asked to keep sits just above it as a visual break between the list and this closing beat.

## Outcome

**Status: Iterate.** Pending Nicole's review. This is intended as a strong candidate for a final round rather than one of several parallel options — round 4 already narrowed to one preferred structure.

🗄️ **Archived — four real problems, three of them process failures worth naming plainly.**

1. **Divider lines, violating a rule that's been locked since the Homepage's round 5:** "No border-line dividers between sections, anywhere. Separation comes from padding/margin alone." `.principle-item { border-bottom: 1px solid #f0f0f0; }` broke this directly, between every principle. Nicole: "why are three dividers when I have explicit rules against that?" Fixed in `v6-refined` by converting each principle into a full bordered card (matching Resume's `.entry-item` / Case Study's `.decision-item`), separated by gap, not by a line.

2. **The `.quote-card` had silently drifted from the real Homepage component** — the same failure mode as the `.engagement-tag` bug caught earlier in Resume's `v1-baseline`, and worth naming just as plainly this time: I described this file's quote-card as "reused exactly from Homepage," but never actually checked it against Homepage's real CSS. It wasn't exact — padding (40/48px vs. the real 28px), border color (#ccc vs. the real #eee), quote-mark size and glyph (48px/opening-quote vs. the real 40px/closing-quote), quote-text size and weight (19px/600 vs. the real 15px/regular), and the missing `<cite>` attribution were all invented approximations, not the actual component. Nicole: "I think the look of the philosophy quote is odd. Something about it just looks off" — she was right, and the cause was exactly this kind of unverified drift. Fixed in `v6-refined` with the byte-accurate real values.

3. **The closing section invented a new way to present project links** instead of reusing the site's already-established pattern for exactly this job — Case Study's own "More Work" section, which uses the real Work-grid card component (image, logo, title, engagement tag, proof line). Nicole: "why would you show the projects in a new way when we have an established way of showing projects that we've used elsewhere, such as at the end of the case study template?" Fixed in `v6-refined` by copying that component verbatim.

4. **Removing the per-principle logo (correctly, per Nicole's request) removed the only thing that had been using the row's width**, reintroducing the "content only on one side" problem from `v3`/`v4` that `v4-stepper-visual`'s side-by-side visual had actually solved. `.principle-copy p { max-width: 68ch }` in a single narrow column left the same right-side dead zone as before. Fixed in `v6-refined` with a two-column row (heading left, content right) instead of relying on a visual element to fill the space — this doesn't reintroduce a brand-adjacent-to-philosophy problem, since the second column is just more of the principle's own text, not a logo.
