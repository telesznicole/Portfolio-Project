# Case Study Wireframe — v1: Editorial Pill

**Generated:** Claude (Sonnet), August 2026
**Tested against:** Information Architecture §3.2, Experience Blueprint §2.5, Decision Log (progress indicator + scroll-reveal, both explicitly reserved for this phase)
**Human curation applied:** None yet — first pass, pending Nicole's review.
**Shared Components used:** Nav (full copy), `.stats-banner` pattern (repurposed as `.exec-strip`), corner-radius system, typography scale.

---

## What This Iteration Tests

Whether a single generous reading column — the most literal continuation of the homepage's `v5`/`v9` editorial direction — holds up at case-study length, and whether two previously-shelved techniques (a floating progress indicator, restrained scroll-reveal) add real value now that they're in the context they were actually reserved for.

## How Each Decision Extends the Homepage, Not a New Language

- **Nav:** identical copy from `_Promoted/Homepage/`.
- **Executive Summary strip:** this is the clearest, most direct component reuse across all three case study concepts — it's the homepage's `.stats-banner` (plain spread flex row, big bold value + small label, no border), with Role/Team/Duration/Proof substituted for the homepage's numeric stats. Same component, same visual logic, different data. This is the most literal possible demonstration of "evolve, don't redesign."
- **Progress pill:** fixed at the bottom rather than the nav's top position, but built from the exact same visual vocabulary — white background, `1px solid #ddd` border, `999px` radius. It reads as the nav pill's sibling, not an unrelated new element.
- **Scroll-reveal:** this technique was built once already, during homepage round 2, then explicitly shelved (not rejected) with a note that it "remains a legitimate, low-risk pattern worth applying to whichever base layout is eventually promoted." This is that application — same implementation approach (content fully present without JS, disabled entirely under reduced motion, `IntersectionObserver`-driven, never scroll-jacking).
- **Retrospective, rejected-alt, images:** same treatment as `v1-sidebar-context` — 16px-radius bordered containers, full-width image breaks with captions.
- **Spacing:** narrative blocks use 88px bottom margin (slightly more generous than `v1-sidebar-context`'s 72px, since there's no competing sidebar chrome to balance against) — same principle, tuned for this column's different visual weight.

## Section Order & Page Hierarchy

Identical sequence to `v1-sidebar-context`: Title → Executive Summary (strip, not sidebar) → Context → Constraints → Decisions → Trade-offs → Outcome → Retrospective → Deep/Technical → Cross-links → Footer. The *order* is a locked IA/Experience Blueprint requirement, not a variable — only the *presentation* of Layer 1 and the wayfinding mechanism differ between concepts.

## Information Density & Image Placement

Slightly more generous column width and block spacing than `v1-sidebar-context`, consistent with this concept's more editorial, unhurried register. Two full-bleed images at the same narrative pause points (after Context, after Trade-offs) — but larger (460px vs. 380px) since there's no sidebar competing for horizontal space.

## Reusable Components Identified

- `.exec-strip` — the stats-banner pattern, generalized as any "spread metadata row," not exclusive to the homepage's specific stats or this case study's specific fields
- `.progress-pill` — bottom-fixed scroll-depth indicator, visually paired with the nav pill
- `.reveal` / `.reveal-ready` / `.revealed` — the scroll-reveal utility classes, now validated in a real context rather than just a shelved experiment
- All components shared with `v1-sidebar-context` (`.narrative-block`, `.rejected-alt`, `.retrospective`, `.narrative-image`, `.crosslink-card`)

## Strengths

- The `.exec-strip` reuse is the single cleanest, most legible example of "evolve the homepage's language" across all three concepts — genuinely the same component doing new work.
- Finally gives the shelved scroll-reveal technique a real test, in the context it was always intended for.
- Simplest concept of the three structurally — lowest implementation risk, most predictable responsive behavior.

## Weaknesses

- No persistent reference context (unlike `v1-sidebar-context`) — a reader who wants to double-check the duration or role halfway through has to scroll back up, since the exec strip isn't sticky.
- The floating progress pill is purely reflective with no section-jump functionality (unlike `v1-sidebar-context`'s progress nav, which is also a navigation aid) — it's wayfinding only, a narrower feature than the sidebar's equivalent.
- Scroll-reveal, even implemented conservatively, is the one element here without direct precedent already validated on the homepage (it was built, then shelved, never actually shipped) — worth watching for whether it earns its keep or just adds motion for its own sake.

## Who This Serves Best

A reader doing a continuous, unhurried read start to finish — closest in spirit to how `v1-editorial-escalation`/`v2-editorial-wide` served Directors and Senior Designers on the homepage.

## Outcome

**Status: Discarded** as a standalone concept, per Nicole's review. Two things survive: the whitespace/breathing-room quality ("I like how this one feels like it has more breathing room") carries into `v2-breathing-room`, and scroll-reveal is confirmed as a technique Nicole may use later, though explicitly deprioritized for the current visual-layout phase ("I won't consider that for now"). The recurring inconsistent-column-width mistake ("a bunch of weird column widths across the page") is the same failure mode already fixed once on the homepage (`v3-integrated-hero`) and is called out explicitly as something to avoid going forward, not repeat.
