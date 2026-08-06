# How I Work Wireframe — v3: Working Principles

**Generated:** Claude (Sonnet), August 2026
**Base:** New scope, built from a direct alignment conversation rather than a refinement of any single v2 concept.
**Tested against:** Nicole's realignment feedback and her explicit answers to two clarifying questions (see Decision Log).
**Human curation applied:** None yet — pending Nicole's review.
**Shared components used:** nav, footer, `.content-shell`, corner-radius system, and typography scale copied verbatim. Credibility strip extends the Homepage's `.stats-banner` shape. Principle numbering carries forward the visual idea from the archived `v2-expandable-principles`, without its click-to-reveal gate.

---

## What Changed, and Why

Round 2 produced three concepts under a shared, wrong assumption: that this page's job was to demonstrate process rigor, either through AI-collaboration philosophy alone or through documenting how this specific website got built. Nicole's review named the problem directly: "this page only has meaning if it shows my thinking and how I'm distinct from other designers... If I want a case study of my website, I would have it as an actual case study, not on a page titled How I Work." Rather than guess again, I asked two clarifying questions before building further:

1. **Scope** — broad design philosophy vs. AI-collaboration-specific vs. something else. Nicole chose **broad design philosophy**.
2. **Substance** — what would make the page worth its own visit. Nicole chose **principles tied to real examples** and a **practice credibility strip**, from a set of three options.

This file is built directly from those two answers, not from further speculation.

## Content Sources — Everything Real, Nothing Invented

Per the standing "avoid overstating my experience, do not invent metrics" instruction in `Professional Profile.md`, every principle and every stat here traces to a specific source:

- **Principle 1–4 and the closing line of Principle 5** are drawn directly from the Portfolio Manifesto's own section headers ("Design and Engineering Are the Same Conversation," "Systems Matter More Than Screens," "Design Begins With People," "Research Exists to Challenge Me," "AI Should Amplify Human Creativity") — curated down from the Manifesto's full 13 principles to the five most distinguishing ones, per Nicole's "how I'm distinct from other designers" framing. The other eight (Good UX Should Be Invisible, Originality Is Not Novelty, Details Communicate Care, Feedback Is Something to Synthesize, Accessibility Is Part of Good Design, Build Things Worth Caring About, The Standard I Hold Myself To, Technology Should Expand People's Lives) are strong but less differentiating on their own — worth a future pass if Nicole wants a longer version, not cut for lack of merit.
- **Every "tied to a real example" sentence** is sourced from `Professional Profile.md` and `Resume.md`: the Meta engagement's 5,000+ research data points and 80+ interaction concepts explored; Terra Dotta's student-journey redesign; the Feminist UX thesis's validation with 10 UX practitioners; Hack iX's AI-assisted development workflow. Nothing here is a plausible-sounding invention — each is a real, already-documented fact.
- **Stats strip**: "6 industry collaborations" counts Meta, FINRA, Terra Dotta, Deloitte, BMW, and Hyundai MOBIS as listed in `Professional Profile.md`. "2 degrees" counts the BS in Computer Science and the MFA in Interactive Design. "10 UX practitioners" is the exact validation-sample size cited for the Feminist UX thesis. Deliberately different facts than whatever Homepage's own stats banner uses (sponsored engagements / thesis / CS background, per the Decision Log's round-4 description) — this page adds new proof, it doesn't repeat the homepage's.

## Interaction Model — Direct Fix for the "Burden" Complaint

Nothing on this page requires a click to be read. Every principle's full content — headline claim and its concrete tie-back — is visible by default, addressing the specific complaint that `v2-expandable-principles` made a short page feel like a chore. The numbered badge is decorative structure, not a toggle.

## Outcome

**Status: Iterate.** Awaiting Nicole's review of this realigned direction before generating further variations, per her request to converge on scope before iterating further.

🗄️ **Archived — content direction confirmed, layout and presentation sent back.** Nicole: "i like this version better" — the realigned philosophy scope and the real-example tie-backs are confirmed as right and carry forward unchanged into round 4. Four specific problems, all fixed or addressed in round 4:
1. **Stats banner dropped.** "i don't like the content of the stats for 10 practitioners... unless you can get better stats that seem more pertinent to my philosophy then i think we should ditch this." No better philosophy-specific stat was found — the real numbers this page has (5,000+ data points, 10 practitioners, 60+ students) already live inside each principle's real-example sentence, which is a more natural home for them than a floating credentials strip that reads more like a resume moment. Dropped rather than forced.
2. **Layout only used part of the available width.** `.principle-body p { max-width: 64ch }` inside a `56px 1fr` grid left a large dead zone on the right of every principle — "the content is only over at the one side." Real cause identified and avoided in round 4's layouts.
3. **No non-text elements.** Purely typographic, unlike every other page on the site. Round 4 reuses an already-validated non-text component (logo-marks, cards, or the stepper) rather than inventing new iconography.
4. **No motif connecting this page to the rest of the site.** The numbered badge (`01`–`05`) is a pattern used nowhere else in the portfolio. Nicole named this directly: "we're not using numbers anywhere else, so maybe we can try using the motif from case study... or maybe use the motif of cards or collapse stuff." Round 4 explores three different existing motifs instead of the invented numbering.

Also requested and addressed as global fixes rather than page-specific patches: the sticky nav's reserved flow space didn't account for its own stuck offset, which could overlap the top of any page's content — most visible here because this page's header is the shortest/sparsest on the site. Fixed on `.site-header-wrap` across all four pages, not just this one. See Decision Log, 2026-08-06.
