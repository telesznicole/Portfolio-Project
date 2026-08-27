# Structure — Meta

> This documents the *actual* raw-materials structure for this project, as it exists in `00_Raw/` — which may (and does) differ from the generic `_Template/` skeleton. That's expected: structure follows the real materials on a project-by-project basis, not the other way around. Filled in collaboratively as Nicole walks through each folder.
>
> **Scope note (added 2026-08-23):** this file documents `00_Raw/` and `00_Raw_Extracted/` specifically. It does not cover `01_Content/`, `02_Selected_Assets/`, or `FINAL-COPY.md` — those are self-documenting (each `01_Content/*.md` file tracks its own status in its "Your Answers" section; `02_Selected_Assets/` now has its own `CURATION-INDEX.md`; `FINAL-COPY.md` is self-contained). This split was flagged by Nicole as unclear — recording it explicitly here so it's not assumed knowledge.

---

## 00_Raw_Extracted/ (added 2026-08-20)

Mirrors `00_Raw/`'s folder structure for anything that needed text extraction from a large PPTX/PDF/HTML file. **Not everything mirrors, by design:**
- **Photos/** — no text to extract from photographs; resized *copies* live here instead (added later, see Photos section below), for viewing rather than extraction.
- **Notes/** — already plain markdown in `00_Raw/`, nothing to extract.
- **NDA/** — only the NDA PDF needed extraction; `nda-guidelines.md` is already markdown.
- **Other/Meta Design Files/** and **Photos/Meta_RBM_Image_Assets/** — image/logo assets, nothing to extract.
- **Process/Project Management.jpg** — image, and deprioritized by Nicole as not very useful; not extracted.

**From this point forward, Claude reads from `00_Raw_Extracted/` for anything text-based** (presentations, reports, design process docs, NDA, website pages) and views photos from the resized copies in `00_Raw_Extracted/Photos/`. `00_Raw/` remains the source of truth for original files and anything referenced by original filename (e.g. curating into `02_Selected_Assets/`).

---

## 00_Raw/ — Folder-by-Folder

### Notes/
*(will hold multiple separate note files on different topics, created together as we work: some filling gaps in the narrative, some Nicole's own documentation. Individual files get added and listed here as they're created.)*
- `general-context.md` — team formation/selection, program context, full presentation/checkpoint timeline
- `nda-guidelines.md` — moved to `NDA/nda-guidelines.md`; this is a pointer stub only

### NDA/
**Purpose:** everything related to what can/can't be shared publicly about this project, kept together since it's reference material Claude needs to check against, not narrative content.
- `Meta_SCADpro_Assign of Work_NDA.pdf` — the actual NDA (Exhibit B, Assignment of Work and Confidentiality Agreement). Full text now read and incorporated into `nda-guidelines.md`.
- `nda-guidelines.md` — complete working guidelines, combining the NDA's actual legal terms with Jeanna's (SCADpro rep) practical guidance. Flags one open question: the exact course end date, to confirm whether the NDA's 2-year confidentiality window has lapsed.

### Photos/
*(all viewed directly by Claude on 2026-08-20 via resized copies in `00_Raw_Extracted/`)*
- `Meta_RBM_Image_Assets/` (2026-08-23 — confirmed sole location, a prior duplicate in `Other/` was deleted by Nicole) — official Meta-provided product photography and CGI renders of the actual retail Ray-Ban Meta glasses (hero shots, gesture-capture demos, form-factor angles, styles/colorways), given to the team for use during the project with **no usage restrictions attached** (confirmed by Nicole, 2026-08-20). Source of the Executive Summary hero image and other selected assets.
- `encore/` — documentation from the encore/showcase event at Meta HQ (confirmed date: **June 17, 2025**, from a visitor name-tag photo). Highlights: two takes of the classic group shot at the Meta infinity-logo sign; a fun photo-op with an Instagram-branded cloud installation inside the office; name tags shot (shows a Meta host's full name on a badge — crop/blur if that specific photo is ever used publicly, consistent with not naming Meta staff elsewhere).
- `final presentation/` — three strong shots from the Final Presentation at SCAD, which visually confirms Nicole's "very theatrical" description: an immersive circular LED-backdrop theater set with lounge furniture and a colorful rug. Includes a full team+guests group photo, Nicole presenting solo with a screen behind her reading "THE ASK — Redefine how young people connect..." (safe content, it's just the restated brief), and a wide shot of five presenters with the audience — this one has a screen showing small app/UI mockups, illegible at this resolution but worth a zoomed-in NDA check before public use.
- `group/` — seven team photos across different points in the project: a playful posed photoshoot-style group (4 takes/variants, everyone in the Meta glasses, studio-lit; **`design_group.png` selected 2026-08-23 for Constraints Card 1, caption "Our design team, mid-exploration and fully accessorized"**), and two "MIDPOINT PRESENTATION" title-screen shots (one full ~22-person team, one 6-person subgroup) plus one classroom group shot with a simple glasses icon on screen. All clean of concept-specific content — good candidates for Context/Outcome hero imagery.
- `headshots/` — eight frames from Nicole's solo shoot (white studio backdrop, wearing the Meta glasses), same visual language as `photoshoot/`. Mix of straight portraits and playful ones (heart-hands gesture). `IMG_9700/9701/9702` are the same burst — `9702` is likely the sharpest/most centered. `IMG_9677` has the warmest genuine smile of the straight portraits.
- `in class/` — five candids. Two show Nicole in conversation with a classmate during a working session (natural, unposed). Two are from a different working/critique session — has a whiteboard reading "AI Add On" visible, plus a design-thinking framework poster (Empathize→Define→Ideate→Prototype→Test) — **confirmed by Nicole (2026-08-20) as NOT the AI add-ons whiteboard convergence moment described in `Notes/general-context.md`; that moment remains undocumented in the raw files, oral history only.** One shows two other classmates (not Nicole) working together in the broader studio space. **Also in this folder (confirmed 2026-08-23, correcting earlier "location not confirmed" notes): `DSC_0647.JPG`** (Nicole at a laptop, two screens with FigJam stickies, physical stickies also on the laptop — selected as Discovery's supporting image), **`DSC_0036.JPG`** (Wizard-of-Oz rehearsal — selected for Constraints Card 4), **`DSC_0624.JPG`** (whiteboarding UI — selected for Decisions top-level), and **`DSCF8638.JPG`** (a testing session — selected for Decisions Card 4). Full selection rationale for all four lives in their respective `01_Content/` files.
- `photoshoot/` — three polished editorial shots, same white-studio aesthetic as `headshots/`. Two are of Nicole (confirmed with user); one (`uvLfP6X0`) is of a different classmate, mid-laugh/dancing motion — good energetic supporting texture shot.
- `other/` (2026-08-23, nested under `Photos/`, not a top-level folder — **correcting earlier notes that mistakenly said "in `Other/`"**): six files, all custom-built or Nicole-selected rather than raw project artifacts —
  - `meta_hero_desktop.png`, `meta_hero_tablet.png`, `meta_hero_phone.png` — three responsive versions of the Executive Summary hero image. An official Meta gesture-capture product shot with a "Hey Meta..." voice-bubble/waveform graphic and the Meta × SCADpro branding lockup added by Nicole, composition adapted per aspect ratio. Finalized and locked — see `01_Content/00-executive-summary.md`.
  - `meta_solution.png` — the Feasibility/Relevance/Vision framework diagram, selected for Decisions Card 3.
  - `laptop_website.png`, `magazine.png` — frozen mockups of the project website and process book, selected for Production Card 2.
- **`presentation_space.HEIC` (in `encore/`, 2026-08-23):** the Meta HQ presentation space itself, photographed before use (empty venue shot). HEIC format, unreadable by Claude's current tools. Not yet assigned to any section.

### Presentations/
**Purpose:** the main pieces of thought, process, and assets presented to the client (Meta) throughout the entire project. Primary source — richest folder for Context, Discovery, Decisions, and Outcome content.

**Chronology (per Nicole, 2026-08-20):**
1. `Presentations_Check-in 1 Presentation.pptx` — first presentation to the Meta client; more preliminary in nature as the team's first touchpoint
2. `General_Focus Group.pptx` — *not* a client presentation — internal walkthrough of the team's focus group activities/structure, used as a research method document rather than something presented to Meta. Timing: likely falls between Check-In 1 and Check-In 1.5/Midpoint (reasonable guess based on Check-In 1's speaker notes mentioning a planned focus group as a next step) — unconfirmed, Nicole didn't personally run this focus group so exact timing is uncertain for both of us
3. `Presentations_Check-In 1.5.pptx` — less formal, smaller audience (select Meta team members only, not full stakeholder group); a pulse check ahead of Midpoint to confirm the work was on target
4. `Presentations_Midpoint Presentation.pptx` — halfway point
5. `Presentations_Check-In 2.pptx` — last touchpoint before the Final Presentation
6. `Presentations_Final Presentation.pptx` — final deliverable showcase to the Meta team, who visited SCAD in person; "very theatrical," covers all key information. **Un-redacted — contains the final idea/artifacts, NDA-restricted for external sharing.**
7. `Presentations_PRODUCT DEMO.pptx` — product demo experience accompanying a prototype, walked through with the Meta team immediately after the Final Presentation at SCAD, same visit. **Un-redacted — NDA-restricted.**
8. `Presentations_FINAL California Presentation.pptx` — the Encore presentation at Meta HQ, full speaker notes, nothing redacted, to a wider group of Meta employees with no prior knowledge of the project. **Un-redacted — NDA-restricted (see refined flag below).**
9. `Meta_encore_Presentation_REDACTED.pdf` — the sanitized companion to #8 — same Encore event, wiped of the final idea/artifacts, explicitly approved by Josh/Chelsea as the one safe-to-share version (see `NDA/nda-guidelines.md`).

**NDA flag (refined):** #6, #7, and #8 above show the actual final idea/artifacts in full. That does NOT make them unusable — they're valuable source material and may contain insights, quotes, or context worth drafting from. It means each specific detail, fact, or image pulled from these three needs an individual NDA check before it lands in final copy, rather than assuming the whole file is off-limits or, conversely, assuming everything in it is safe. The redacted deck (#9) is the reference point for what's already been cleared.

**Reorganization:** holding off on restructuring `Presentations/` (e.g. pulling the Focus Group deck into `Process/`) until we've been through all folders — better to let natural groupings emerge than to reorganize mid-review.

### Process/
**Purpose:** everything used *during* the process of creating deliverables, plus documentation of the process itself. Currently a bit jumbled (Nicole's words) — likely to get reorganized once we've been through each piece individually.
- `Process Magazine.pdf` — a polished, already-written mini case study of the entire project, made by a classmate. Follows an 8-phase framework (Understand → Define → Research → Develop → Decide → Validate → Produce → Deliver) with finished narrative copy, insight statements, and direct research quotes throughout. Confirms team size as exactly **22 students, 13 majors, 8+ languages**. Extremely rich, but contains the same NDA-restricted named-concept content as the reports (in far more depth — full feature breakdowns, UI sitemaps, validation research stats, the Menlo Park pitch) — covered by the existing restriction in `nda-guidelines.md`, not a new category.
- `Meta Ray-Ban_ Enhancing User Experience and Gen Z Cultural Relevance.pdf` — **the original project brief** given by Meta at kickoff. Contains objectives, target audience, design opportunity areas, constraints (18–24 month feasibility window, no hardware form-factor changes), success metrics, deliverables, and week-by-week timeline. Also names the actual Meta project team with full titles (sponsor VP, project manager, design director, etc.) — see NDA flag below, this part is treated differently from the rest of the document.
- `Project Management.jpg` — internal file describing team roles/responsibilities (who does what). Image file, hard to read directly — Nicole to describe when we get to it.
- `design process/` — three "chapters" tracing the design process:
  - `chapter 1/` — raw data, data archive, "I statements," How Might We's (research → synthesis)
  - `chapter 2/` — more HMWs + ideation, prioritization matrix, finalized idea groups (synthesis → direction)
  - `chapter 3/` — final groupings (direction → convergence)
- `reports/` — four formal written reports, one per major milestone (excluding Encore), created for SCADpro stakeholder accountability. Each follows the same structure: Problem Statement, Goal, Deliverables, Progress Report, Client Feedback, Client Next Steps, Working Well / Needs Improvement, Student Next Steps.
  - `Meta_Check_In_1_Report.txt` (Week 3) — preliminary research recap (5000+ data points), cultural/ethnographic/market analysis, opening HMW statement, detailed client feedback across 7 categories (strategy, UX, AI, prototyping, feasibility, social dynamics, process)
  - `Meta_Midpoint_Report.txt` (Week 5) — framework + user scenarios per persona, feasibility mapping (Immediately actionable / Possibly feasible / Most ambitious tiers). **Contains an early named mention of "AI add-ons" as one of several features under a persona scenario, plus client feedback explicitly prioritizing "modes and add-ons" going forward** — this is a real paper-trail data point for the convergence story, even if not the literal whiteboard moment itself (see `Notes/general-context.md`)
  - `Meta_Check_In_2_Report.txt` (Week ~7) — **names the final concept and its three examples outright**, plus two supporting platform features, plus six named Meta stakeholders' individual feedback. NDA-restricted, see flag in `nda-guidelines.md`
  - `Meta_Final_Report.txt` (Week 10) — same final concept, full lifecycle walkthrough, overwhelmingly positive client reception. NDA-restricted
  - **Recurring gap across all four:** "Working Well" and "Needs Improvement" sections are placeholder text ("GIO AND LUCY FEEDBACK") in every report — this content was apparently never filled in. Could be a real gap for Retrospective material, or Nicole may remember what was actually said.

### Other/
**Status: catch-all, not yet properly organized.** To be reorganized as we walk through individual items — may mean renaming main root folders entirely, not just moving things within `Other/`.
- `Meta Design Files/` — Meta's own brand asset packs (Instagram, Messenger, Threads, WhatsApp, Workplace, company lockup), provided for use during the project. Reference/logo assets, not project-original material. **Contains a nested `other/` subfolder (found 2026-08-23, now resolved):** three animated Instagram assets (`249529193_...gif`, `Intro_XL.gif`, `Intro_XL.mp4`) — confirmed by Nicole as just extra branding-asset gifs/videos, nothing that needs separate handling. Reference material only, same tier as the rest of `Meta Design Files/`.
- `SCADPRO META WEBSITE/` — four HTML pages making up an actual finished deliverable: a website built as part of the project. Now readable via `00_Raw_Extracted/`. Clean NDA split by page:
  - `ABOUT` — mostly safe. Project framing, full team roster with majors, faculty. No final-concept naming.
  - `OVERVIEW` — mostly safe (process framework, HMW statement, stats, "Capture. Connect. Express." value prop tagline) — but the Menlo Park section does name "our Add-Ons concept," so that specific paragraph is NDA-restricted, rest of page is fine.
  - `RESEARCH` — safe. Discover/Define/Develop/Deliver framework, research methodology, stats, social-connection-type breakdown (Person-Person/Digital/AI), value proposition. No final-concept naming.
  - `SOLUTION` — **fully NDA-restricted.** Names AI Add-Ons, all three examples (Wardrobe Wingman, Ghost Run Club, Dare Roulette), Creator Flow, Marketplace, and Community outright, plus the Menlo Park section again. Treat this entire page as internal-reference-only, same tier as the Check-In 2/Final reports.

---

## Change Log

**2026-08-23 — full re-audit.** Fixed several errors: the hero image and other custom-selected photos had been documented as living in `Other/` when they actually live in `Photos/other/` (a different, nested folder, easy to conflate given similar names). Confirmed folder locations for four photos previously marked "not confirmed." Two issues flagged for Nicole's input, both now resolved: the `Meta_RBM_Image_Assets/` duplication (Nicole deleted the `Other/` copy, sole location is now `Photos/`) and the nested `other/` subfolder inside `Meta Design Files/` (confirmed as just extra branding gifs/videos, no action needed). Added a scope note clarifying this file covers `00_Raw/`/`00_Raw_Extracted/` only, not `01_Content/`/`02_Selected_Assets/`/`FINAL-COPY.md`.
