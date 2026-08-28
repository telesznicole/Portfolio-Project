# Resume Wireframe — v1: Baseline

**Generated:** Claude (Sonnet), August 2026
**Base:** New page — extends the Homepage/Case Study visual language and component library directly (nav, footer, `.player-card`, `.logo-mark`, `.engagement-tag`, `.placeholder-img`, 999px/16px corner-radius system), per the Wireframing Workflow's rule that new sections evolve the existing system rather than inventing one.
**Context provided:** Experience Blueprint §2.7 (Resume); Information Architecture §3.5 (Resume); Decision Log, 2026-08-04, "Open question raised... academic/professional journey showcase" entry; `04_Research/Design Exploration/Layout/Andrea/notes.md` and `resume_1.png`/`resume_2.png`; the live reference at `adasilv2.framer.website/resume`; `01_Me/Resume.md` and `01_Me/Professional Profile.md` for real content.
**Tested against:** Nicole's direct brief — "I want to use this expand collapse feature alongside a picture and company logo to show my academic and professional journey. The resume itself as a download should also be here" — plus the Andrea reference she'd already saved and flagged ("Almost exact copy → really like this concept for my resume").
**Human curation applied:** None yet — pending Nicole's review.
**Shared Components used:** `.player-card` (Homepage About), `.logo-mark`, `.engagement-tag`, `.placeholder-img`, nav and footer markup (Case Study/Homepage), and the `.decision-item`/`.decision-toggle` expand/collapse mechanism from the Case Study template — retargeted here as `.entry-item`/`.entry-toggle` with different content, same interaction and CSS shape.

---

## What This Iteration Tests

Whether the Andrea reference's core interaction pattern — expandable entries, collapsed by default, each pairing a company logo and photos — reads well built entirely out of components this portfolio has already established and validated, rather than introducing a new visual language for a fourth page.

## Why One Concept, Not Several

Every other wireframing phase so far (Homepage, Case Study) started with multiple independently-conceived concepts because the direction itself was the open question. That's not the case here: Nicole provided a specific reference, a specific interaction request (expand/collapse + photo + logo), and the Experience Blueprint had already independently arrived at the same pattern before the reference was even found (§2.7: "Presenting resume entries as expandable... alongside a direct PDF download... gives Recruiters... and deeper reviewers... both what they need"). With the destination this clear, generating deliberately divergent alternatives would be manufacturing disagreement rather than resolving a real open question — consistent with the lesson already learned in Homepage round 2 about over-varying when the goal is actually convergence. One well-built concept, evaluated and refined, is the appropriate scope here.

## Layout Decision: Row Pattern, Not Sidebar+Narrative

Case Study uses a sticky sidebar + scrolling narrative because it's telling a story with a beginning and end. Resume is explicitly *not* that — Experience Blueprint §2.7: "Outside the main narrative arc — a reference document, not a story beat... this is the one page where a visitor wants everything, fast." So this wireframe follows the Andrea reference's actual layout instead: a left-column label (Education, Experience, Expertise) paired with right-column content, repeated per section, no sticky positioning, no scroll-tracking. Different problem, deliberately different pattern — not an oversight.

## Identity Block

Reuses the Homepage's `.player-card` exactly (photo + name + title) rather than Andrea's smaller circular photo treatment — this was a deliberate substitution. Andrea's site is the source for the *interaction* pattern being tested (expand/collapse, logos, photos); the *visual* presentation of "who is this person" should look like it belongs to the same product as the Homepage's own About section, not import a second identity-card style. `.player-name` carries the page's single `<h1>` — there's no oversized display heading here, matching the Blueprint's "reference document, not a story beat" framing.

## Download

Two paths, matching the IA's distinction exactly: a prominent `.download-btn` (styled like `.nav-resume`) in the identity block for a visitor already on the page, and the footer's Resume link — present on every page per IA §1 — carries a `download` attribute here (and should on every other page) since the footer's Resume is specified as a direct download action, distinct from primary nav's Resume, which navigates to this page.

## Content Honesty

Experience entries use the five roles from Nicole's actual `Resume.md` (not the fuller list in `Professional Profile.md`, which includes BMW and Hyundai MOBIS) — respecting her own curation rather than defaulting to "more is more." Contribution bullets and skill tags are synthesized from `Professional Profile.md`'s "Experience Highlights," condensed. **Dates and locations needed synthesis and should be verified before this goes live**: `Resume.md` doesn't include them at all, and `Professional Profile.md`'s "Experience Highlights" gives date ranges but never states a city — "Savannah, GA" is inferred from these all being SCAD-administered courses, not confirmed against a source. An Awards section (present in the Andrea reference) was deliberately omitted — no real awards data exists in `01_Me`, and inventing placeholder awards would violate the standing instruction in `Professional Profile.md`'s "Notes for AI" ("do not invent metrics... avoid overstating my experience").

## The Naming Question (Deliberately Not Resolved Here)

Nicole flagged that "Resume" as a page/nav label has been an open question since the Decision Log entry on 2026-08-04, and asked to keep using "Resume" for now and resolve naming before this wireframe is pushed — not as part of this round. Nothing in this file resolves it; noted here so it isn't lost.

## Strengths

- Every component on this page already exists elsewhere in the portfolio and is already validated — this page inherits that trust rather than asking Nicole to evaluate a fifth visual language.
- The expand/collapse mechanism is byte-for-byte the same pattern as Case Study's Decisions cards, so the interaction is already something a repeat visitor to the portfolio (or Nicole, reviewing it) has seen work correctly before.
- High information density (11 skill tags, 11 tool tags, 5 detailed roles, 2 degrees) is presented without feeling cramped, consistent with the Blueprint's explicit direction that density is *appropriate* here, unlike everywhere else in the portfolio.

## Weaknesses

- Dates/locations need Nicole's confirmation, flagged above — this file should not be treated as source-of-truth for that metadata.
- Five simultaneous expand/collapse entries plus two tag rows is the densest single page in the portfolio so far — worth confirming it reads as "complete and fast," per the Blueprint's goal, rather than "long."
- No photos or logos exist yet as real assets (`05_Assets` is still scaffolded/empty) — every image here is a placeholder, same convention as every other wireframe, but worth flagging since this page's whole premise leans on imagery more than any other page has so far.

## Who This Serves Best

Recruiters and ATS systems (PDF download, fast scan, ATS-friendly plain structure), plus any reviewer who wants role-level depth without leaving the site (expand-to-read, matching exactly what Nicole's own research notes on the Andrea reference said she liked).

## Outcome

**Status: 🗄️ Archived — refined into v2.** Nicole's review requested the phone number removed (privacy) and, more substantively, caught a real cohesion bug: this file's `.entry-skills`/`.tag-row` pills reused the `.engagement-tag` class name but silently redefined its styling, so nothing named `.engagement-tag` on this page actually looked like the Homepage/Case Study's real engagement tag anymore. Fixed in `v2-refined` by splitting into two honest components — `.engagement-tag` restored to its exact original definition and reused fresh (as a project-type classification per Experience entry), `.skill-tag` introduced as its own named component for the Skills/Tools pills. See `v2-refined/notes.md` for the full explanation and the classification values assigned.
