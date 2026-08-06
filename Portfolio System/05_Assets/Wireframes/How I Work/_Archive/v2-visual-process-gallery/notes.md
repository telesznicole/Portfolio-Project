# How I Work Wireframe — v2: Visual Process Gallery

**Generated:** Claude (Sonnet), August 2026
**Base:** New — most visual of the three round-2 concepts.
**Tested against:** Nicole's round-1 review, both halves — skimmability and "worthwhile to have its own page."
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** `.placeholder-img`, exact styling (dashed diagonal gradient, 16px radius) reused for the "project/work imagery" context, matching how it's used for Case Study images and Homepage Work-grid cards. A new, small, functional interaction is layered on top — see below.

---

## What This Concept Tests

Whether the strongest version of this page is the most visual one: almost no reading required to get the point, with a real interaction (a before/after toggle) doing the work that paragraphs did in round 1. This is the most literal answer to "make it worthwhile to have its own page" — a visual, comparative artifact that can't be meaningfully compressed into a homepage section or an About blurb.

## Why This Round Happened

See `v2-expandable-principles/notes.md` for the full account of round 1's rejection. This concept leans hardest into the "interactive or creative" half of Nicole's feedback, betting that for this specific page, showing real iteration is more persuasive than describing it — even in trimmed, expandable form.

## Content Sources — Real Rounds, Wireframe-Fidelity Labels

Each of the three comparisons cites a real, already-logged change:
- **Homepage Hero** — the round-5 shift from a dense, front-loaded hero (an instinct traced back to the archived `v1-everything-upfront` and `v1-credibility-first` concepts) to the promoted `v9-rounded-final`'s bottom-anchored headline.
- **Navigation** — the two real structural nav rewrites documented in the Homepage Decision Log: centered-logo pill (round 8) → logo-led single group (round 9, `v9-rounded-final`).
- **Case Study Progress Indicator** — the three real progress-indicator styles tested (numbered stepper, tag chips, marker-and-line stepper) before `v3-progress-stylized`'s approach was confirmed as the winner in round 5.

Because this is still low-fidelity wireframing, the "before"/"after" states shown are labeled placeholder frames (`[Homepage Hero — v1, Everything Up Front]`), not real screenshots — consistent with the fidelity level used everywhere else in this repository. Real visual captures would replace these once the Design System phase produces actual styled screens; the structure and real captions are accurate now, only the imagery is a stand-in.

## The New Interaction, and Why It's Different From What Was Rejected in Round 1

Round 1 deliberately avoided reusing Case Study's stepper-nav pattern here, reasoning that it was purpose-built for scroll-tracked wayfinding and would be decoration without function elsewhere. Nicole's feedback didn't just ask for restraint to be removed — it asked for real interactivity. This concept's toggle button is a genuine, small, functional interaction (a real `<button>` with `aria-pressed`, swapping visible content, not just decoration) rather than a borrowed pattern used out of context. It respects `prefers-reduced-motion` by design, since it's an instant content swap with no animation to begin with.

## Outcome

**Status: Iterate.** Pending Nicole's review alongside `v2-expandable-principles` and `v2-decision-log-excerpt`.

🗄️ **Archived — same scope misalignment as `v2-decision-log-excerpt`.** This concept was visually the most well-received of the three round-2 attempts ("starts to get a little interesting visually"), but its subject — a before/after gallery of this website's own wireframe evolution — is the same self-referential-case-study framing Nicole explicitly rejected: "I don't think this page has the purpose of showing how I built my website itself. I think it should be more of a philosophy page." The before/after toggle mechanism (a real, functional interaction rather than decorative motion) is a genuinely reusable idea and may be worth revisiting for an actual case study about the portfolio-as-product someday — just not here. No content carries forward into `v3-working-principles`.
