# Case Study Wireframe — v1: Sidebar Context

**Generated:** Claude (Sonnet), August 2026
**Tested against:** Information Architecture §3.2 (Case Study Template), Experience Blueprint §2.5, Decision Log (progress indicator reserved for case study phase)
**Human curation applied:** None yet — first pass, pending Nicole's review.
**Shared Components used:** Nav (full copy), corner-radius system, typography scale, `.player-card`/`.quote-card` DNA informing sidebar treatment, click-to-expand precedent (not used directly here, but informs `.rejected-alt` disclosure).

---

## What This Iteration Tests

Whether a persistent sidebar — holding the Executive Summary and a progress nav — earns its place in a long single-narrative read, even though the structurally similar `v3-split-persistent` was explicitly declined for the homepage ("doesn't quite align with what I envisioned").

## Why This Isn't Just Re-Litigating a Declined Idea

The homepage's split-persistent concept was rejected as a *whole-page navigational paradigm* — replacing scrolling with a fixed identity panel across four short, scannable marketing sections. A case study is a different problem: one long, single narrative where a reader genuinely might want to glance back at "wait, how long was this project" or "what was the actual proof point" without scrolling up through several thousand words to find it. Persistent reference context solves a real problem here that it didn't solve on the homepage. This distinction is stated explicitly so it doesn't read as ignoring prior feedback — it's a different problem being tested with a related tool.

## How Each Decision Extends the Homepage, Not a New Language

- **Nav:** copied verbatim from `_Promoted/Homepage/`, with anchor links updated to `/#work` etc. per IA cross-linking rules for non-homepage pages.
- **Title moment:** reuses the homepage hero's exact `h1` scale and weight (`clamp(32px, 5.5vw, 56px)`, 800), so the jump from homepage to case study doesn't reset the visual register.
- **Sponsor mark:** `.logo-mark`, same circular 999px treatment as the homepage Work cards' company badges, just larger.
- **Engagement tag:** identical component, identical pill styling, same content vocabulary ("Sponsored Engagement") already established on the homepage's Work cards.
- **Retrospective card:** border + 16px radius, same visual family as `.player-card` and `.quote-card` — used here to give the mandated retrospective section real visual weight, exactly as the Experience Blueprint calls for.
- **Rejected-alternative callout:** same 16px-radius bordered-box treatment as the retrospective, at lower visual weight (no full section styling) — a smaller instance of the same pattern, not a new one.
- **Spacing:** narrative blocks use 72px bottom margin — a deliberately smaller nested rhythm than the homepage's 100–140px section gaps, since this page has many more sub-beats. Same *principle* (generous, whitespace-only separation, no divider lines), scaled for a denser page.
- **Progress nav:** newly built (explicitly reserved for this phase in the Homepage Decision Log), but implemented with the same reflection-only `IntersectionObserver` approach validated on the homepage — never controls scroll, only reflects position.

## Section Order & Page Hierarchy

Title → Executive Summary (sidebar, persistent) → Context → Constraints → Decisions (with rejected alternative) → Trade-offs → Outcome → Retrospective (highlighted) → Deep/Technical (edge cases, engineering handoff, How I Work link) → Cross-links (other case studies, back to Work) → Footer.

## Information Density & Image Placement

Density increases gradually through Layer 2 (Context is brief, Decisions and Trade-offs carry more), spikes intentionally at Retrospective (given real visual weight, not compressed), then shifts register entirely for Layer 3 (denser, technical, clearly optional). Two full-width narrative images break up the reading column at natural pauses — after Context and after Trade-offs — rather than being front-loaded or evenly spaced by a fixed rule.

## Reusable Components Identified (not built as a system yet)

- `.exec-summary` — sidebar metadata block (role/team/duration/problem/proof as a definition list)
- `.cs-progress-nav` — sticky in-page section nav with scroll-reflected active state
- `.narrative-block` — labeled content section with consistent heading treatment
- `.rejected-alt` — bordered callout for "considered and rejected" content
- `.retrospective` — visually-elevated variant of `.narrative-block`
- `.narrative-image` — full-width image + caption unit
- `.crosslink-card` — image + label link to another case study

## Strengths

- Persistent context genuinely serves a long-form reader in a way it didn't on the homepage — a real, well-motivated use of a previously-declined pattern.
- Retrospective gets unmistakable visual priority, directly matching the Experience Blueprint's instruction.
- Progress nav doubles as both wayfinding and section-jump navigation, giving it more functional value than a passive indicator would.

## Weaknesses

- Sidebar width (260px) constrains how much exec-summary detail can live there comfortably — a longer problem statement or proof point would need tight editing to fit.
- On tablet-width viewports, the sidebar-to-horizontal-bar transition (see `@media (max-width: 960px)`) is the most layout-complex breakpoint tested across this whole project so far — worth real scrutiny once this moves past wireframe fidelity.
- Two sidebars' worth of persistent chrome (site nav pill + case study sidebar) is more chrome than any page has carried yet — worth confirming it doesn't compete with the narrative for attention.

## Who This Serves Best

Directors, Senior Designers, and Engineers reading the full narrative closely — the persistent context and progress nav are built for someone spending real time here, not a fast scanner.

## Outcome

**Status: Superseded**, not discarded. Confirmed as the leading direction ("right off the bat I actually really like this a lot... might be a final contender"). Three specific corrections requested — progress-nav trigger timing, bolder typography, and "More Work" cards matching the homepage exactly — carried forward into `v2-consistency` and its sibling variants.
