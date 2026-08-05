# Case Study Wireframe — v2: Cards in Body

**Generated:** Claude (Sonnet), August 2026
**Base:** `v2-consistency` — this variant changes exactly one more thing.
**Tested against:** Nicole's review of `v1-modular-cards` — liked the cards and the expand-to-scan pattern, but flagged it as "maybe a little overdone" and asked for cards used "sparingly."
**Human curation applied:** None yet — pending review.
**Shared Components used:** Click-to-expand pattern, direct reuse from `v1-modular-cards` and the archived homepage `v1-compact-dashboard` concept.

---

## What This Iteration Tests

The second card-placement option: whether confining card treatment to exactly the one place it does real functional work — Decisions, where "considered and rejected" detail benefits from being compressible — delivers the scanning benefit Nicole liked about `v1-modular-cards`, without the density/hierarchy problem she flagged.

## The Change

Only the Decisions section changes. Each decision is now its own bordered card (`16px` radius) with a click-to-expand button — the decision itself always visible, the rejected-alternative detail hidden until expanded. Every other narrative block (Context, Constraints, Trade-offs, Outcome, Retrospective, Deep/Technical) stays exactly as flowing text, identical to `v2-consistency`.

## Why Decisions Specifically

Decisions is the one section where the underlying content already has a natural two-tier structure — "what I chose" and "what I rejected and why." That's exactly the shape click-to-expand is good at compressing. Context, Constraints, and Trade-offs don't have that same natural split, so wrapping them in cards would be decoration, not function — which is precisely the distinction Nicole drew between liking the *pattern* and disliking its *overuse*.

## What Didn't Change

Sidebar stays a plain, borderless list (see `v2-cards-sidebar` for that treatment instead). No other narrative block gets card treatment.

## Strengths

- The most restrained possible interpretation of "cards, but sparingly" — exactly one section, exactly where the pattern earns its place functionally.
- Directly preserves what worked about `v1-modular-cards`'s expand-to-scan behavior while removing everything that made it feel "overdone."
- A reader who only wants the headline decisions (not the full rejected-alternatives reasoning) can scan this section in seconds — a real, distinct benefit over the flowing-text version.

## Weaknesses

- Introduces one visual language shift mid-page (bordered cards appear only inside Decisions) — worth checking whether that reads as a deliberate, legible distinction or as an inconsistency, since nothing else on the page prepares a reader for cards to show up specifically there.
- If a case study's Decisions section only has one or two decisions, the card treatment may feel like more structural overhead than the content needs — worth confirming this still makes sense at low decision-counts, not just at the two shown here.

## Who This Serves Best

Hiring Managers and PMs scanning for what was actually decided without needing every rejected-alternative reasoning by default — closest in spirit to who `v1-modular-cards` served, but without that concept's density cost to the rest of the page.

## Outcome

**Status: 🗄️ Discarded — superseded.** Nicole: "superseded by v3-cards-both as the baseline for judgement." The Decisions-card treatment this file introduced is fully preserved forward — it's part of `v3-cards-both` (the confirmed standard baseline) and every round-4/5 variant built on it. Archived because the plain-sidebar comparison point this file offered is no longer useful now that a single baseline is locked, not because the underlying idea was wrong.
