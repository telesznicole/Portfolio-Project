# Structure — Feminist UX

> This documents the *actual* raw-materials structure for this project, as it exists in `00_Raw/` — which differs substantially from the generic `_Template/` skeleton, and from Meta's structure too. That's expected: structure follows the real materials on a project-by-project basis. This project's raw materials are unusually complex — six distinct source categories (thesis document, draft history, live website, testing transcripts, a large Miro board export, and formal academic submission materials) spanning four separate classes plus a milestone-event layer on top. This file exists specifically to make that complexity navigable quickly, without having to re-derive it from `Notes/general-context.md`'s narrative prose or `manifest.md`'s flat table each time.
>
> **Scope note:** this file documents `00_Raw/` and `00_Raw_Extracted/` specifically. It does not cover `01_Content/`, `02_Selected_Assets/`, or `FINAL-COPY.md` — those are self-documenting (each `01_Content/*.md` file tracks its own status in its "Your Answers" section; `02_Selected_Assets/` has its own `README.md`; `FINAL-COPY.md` is self-contained). As of this writing, none of those three have been started — the project is still in the raw-materials phase.

---

## The Naming Convention (read this first — it's the key to navigating everything below)

Every folder and most standalone files use `[Class]_[ContentDescription].[ext]`, where `[Class]` is one of:

| Code | Meaning |
|---|---|
| **RP** | Research and Practice — the prerequisite class, Spring 2025. Where the topic itself originated. |
| **T1** | Thesis 1 (ITGM 755) — Summer 2025. Regular coursework. |
| **REV** | The Thesis Review specifically — a milestone *within* the Thesis 1 timeframe, but its own distinct event (a go/no-go panel presentation), not just another T1 assignment. |
| **T2** | Thesis 2 (ITGM-765-N02) — Fall 2025. Regular coursework. This is the class where the actual artifact (the microsite) was built. |
| **T3** | Thesis 3 (ITGM 790) — Spring 2026. Regular coursework. |
| **DEF** | The Final Defense submission specifically — a milestone *within* the Thesis 3 timeframe, same logic as REV. |

Two folders are deliberately left **unprefixed**: `Other/readings/` (academic sources referenced throughout the whole thesis, not tied to one class) and `Process/writeups/`, `Process/T3_WriteupWIPs/` (internal folder names that predate full convention rollout — their *contents* are individually class-coded, see the Process/ section below).

Applied at the folder level where a whole folder shares one class, or at the file level for standalone files. Leaf files inside a correctly-coded folder generally keep their original descriptive names rather than being exhaustively re-prefixed (e.g. `q1.png` inside `T1_MVE-Prototype/results/`) — the parent folder already establishes context.

---

## 00_Raw_Extracted/ — Mirroring Logic

Mirrors `00_Raw/`'s folder structure exactly, filename for filename, for anything that needed text extraction from a PDF/PPTX/HTML/RTF/image-based Miro export. **From this point forward, Claude reads from `00_Raw_Extracted/` for anything text-based.** `00_Raw/` remains the source of truth for original files.

**What does NOT mirror, by design:**
- Video and audio files (`.mp4`, `.mov`, `.m4a`) — no text to extract. Present in `00_Raw/` only.
- `general-context.md` — already plain markdown in `00_Raw/Notes/`, nothing to extract.
- `manifest.md` in `00_Raw_Extracted/` is a **pointer stub only**, not a duplicate — it explicitly redirects to `00_Raw/manifest.md` as the single source of truth, to avoid two manifests drifting out of sync.

**A real, known extraction failure, not yet resolved:** `Presentations/T2_CheckIn2.pdf` extracts to almost nothing (17 bytes) — confirmed by Nicole to be a mostly-image-based slide deck. Low priority; `Presentations/T2_Final.pdf` covers the same Sprint 1–3 ground in detail.

**History worth knowing:** a large batch of files across the Miro-sourced folders (see `Other/` below) originally extracted to near-empty (1–7 bytes) due to the Miro export being image-only in places. Nicole fixed this herself by re-exporting, and all of that content is now genuinely present and has been read. If any *new* Miro-sourced file ever shows a suspiciously small extracted file size, that's the pattern to check for.

---

## 00_Raw/ — Folder-by-Folder

### Notes/
- `general-context.md` — the primary narrative document for this project. Program timeline, committee/contributor names, the writeup's full version evolution, the live website's real content, testing transcript findings, the entire Miro board's findings, Nicole's personal reflection on the project, and a standing content-sourcing priority principle (canonical document = source of truth for facts, draft history = source for process narrative). This is the single richest document in the whole system — read it before anything else if you need narrative depth this file doesn't provide.
- `T2_ProcessLog.rtf` — Thesis 2's own README, written by Nicole. A real, hour-logged Sprint 1–3 process record with committee names, a detailed AI-usage disclosure, and the original Miro board link. One of the most specific, granular sources in the whole project — actual hours spent per task.

### Other/
The most structurally complex folder in this project — six distinct sub-collections, spanning both raw testing/product artifacts and the entire Miro board export.

- **`T1_MVE-Prototype/`** — the Minimum Viable Experience testing from Thesis 1 (Summer 2025). Three demo videos (including the actual MVE flythrough), a Maze platform testing report, and a `results/` subfolder with screenshot exports for four testing categories (Comparing the Two Experiences, Imagining a Future Tool, Onboarding Flow A, Onboarding Flow B) plus an `extra/` folder (additional feedback, interview emails). This is the *earlier* preliminary round — 8 participants, distinct from the later 10-participant Final Validation.
- **`DEF_Microsite-Assets/`** — the actual finished product's brand and downloadable assets: the "Feminist UX To Go" toolkit (10 PDF cards — CREDITS, KEY, TITLE, and five tenet cards T1–T5), the logo family (`feminist_ux_logos/`, 7 files: primary logo, light/dark favicons, two app-icon variants), and the social preview image.
- **`DEF_Website/`** — the actual live site (`feministux.org`), saved as 5 raw HTML pages (Home, Learn, Experience, Engage, About). This is current, public-facing content, not draft history — genuinely useful as source material. **Contains a real, unresolved discrepancy worth knowing:** the live site's tagline is "Design for everyone." — the thesis text explicitly says the developed slogan was "Design for all." Both are confirmed accurate to their respective sources; not yet resolved which should be treated as current. Full detail in `general-context.md`.
- **`T2_FeminismResearch/`, `T2_LearnContentOutline/`, `T2_ToolkitDevelopment/`, `T2_ToolkitIdeation/`** — four folders, all Thesis 2 (Fall 2025) material, all sourced from Nicole's Miro board:
  - `T2_FeminismResearch/` (4 files) — a full literature citation tracker with a "Used? yes/no/maybe" column per source.
  - `T2_LearnContentOutline/` (3 files) — the actual content outline the live Learn page was built from, plus a source-usage citation tracker. Note: the file named "Refined" is actually an *earlier* draft than the file named "Final," despite the naming — confirmed by comparing content (the "Refined" file's core definition is marked "still WIP").
  - `T2_ToolkitDevelopment/` (4 files) — the toolkit's full question set across four full version iterations (V1–V4). Real evolution visible: V1 has fixed "Advice Type" hints per answer (dropped by V4), and V1's answer scales are clinical/third-person versus V4's personal/first-person phrasing.
  - `T2_ToolkitIdeation/` (~17 files, in a nested `Probing Topics per Design Item/` subfolder with a further `Feedback Statements/` subfolder) — the toolkit's underlying architecture: the assessment-dimension-to-design-item mapping, the internal grading scheme (exact scoring formulas, three-tier feedback system), phase-specific question banks for all 7 design-item types, and the **full AI system prompt version history (V1 through V6 plus FINAL)** — the actual text that generates the toolkit's live AI feedback. A real design shift is visible across versions: the "never mention scores/grading" rule was introduced at V3, and the friendlier category renaming (matching what ships live) came later, at FINAL, as a separate change.
- **`T3_FinalValidation/`, `T3_FocusSessions/`** — two folders, both Thesis 3 (Spring 2026) material, both from Miro:
  - `T3_FinalValidation/` (~13 files across `Final Validation Analysis/`, `Final Validation Planning/`, `Final Validation Sessions/`) — this is the single richest document set in the entire project. Contains Nicole's own confirmed P-number-to-real-name mapping table (see the privacy note below), her live behavioral observation notes taken during each session, her own full analytical synthesis mapped to her research questions, the exact informed consent language and survey instrument, and real participant email addresses (**never to be reproduced in any documentation or content**).
  - `T3_FocusSessions/` (10 files) — a **separate, earlier** 5-person co-creation round, distinct from the 10-person Final Validation. Uses anonymous "Subject Numbers," not P-numbers. Reveals the identity of all 5 co-creation participants, including a genuine cross-project connection: Blake Mitchell, from Nicole's Meta team, participated in this round (not Final Validation).
- **`readings/`** (6 PDFs, deliberately unprefixed) — the core academic literature: Bardzell (Feminist HCI), Costanza-Chock (Design Justice), Henriques et al. (gender-blind design), Wajcman (Technofeminism), Weber (Feminist Technoscience), Haraway (A Cyborg Manifesto). Referenced throughout the whole thesis, not tied to one class.

**⚠️ Standing privacy rule for everything in `T3_FinalValidation/` and `T3_FocusSessions/`:** real names appear throughout for internal tracking. These must never appear in public-facing case study content — anonymized P-numbers (Final Validation) or Subject Numbers (Focus Sessions) only, always. Full detail and the actual name mapping table live in `general-context.md`.

### Photos/
Reclassified per Nicole's direct guidance to hold only genuine photographic/documentary evidence, not process artifacts like flyers (those live in `Process/` instead).
- `T3_FinalClassScreenshot.png` — a screenshot from before the defense photos were added.
- **`DEF_DefenseGroupPhoto.JPEG`, `DEF_MyDefenseStation.JPEG`, `DEF_DefenseCandid.JPEG`** (added 2026-08-XX) — the first genuine new photos added to this project since the raw-materials phase began, from the actual Final Defense symposium. `DEF_MyDefenseStation` in particular shows Nicole at her own real defense station with her actual poster and live validation-results screen visible — a strong Outcome-section hero candidate.

### Presentations/
The formal deck/video record across the whole program, organized by class.
- **`RP_FinalSubmission/`** — Research and Practice's final deliverables: deck, video, prototype documentation.
- **`REV_ReviewMaterials/`** — the actual Thesis Review materials (the go/no-go gate): the review deck (PDF + PPTX), a rubric (blank/unfilled template, not the signed copy), a supplemental MVE video, and — genuinely unexpectedly — **Nicole's entire 188-page MFA candidacy Process Book**, which turned out to cover six other projects beyond this thesis (including her actual Meta project credit, which listed a "Photographer" role never captured in the Meta case study itself) plus her full resume.
- **`REV_ProposalPresentation.pdf`** — a standalone file, the slide-deck presentation version of the thesis proposal. Distinct from the *written* proposal document, which lives in `Process/REV_ThesisApplication/`.
- **`RP_HistoricArtifacts-PPT.pdf/.pptx`, `RP_HistoricArtifacts-Video.mp4`** — a specific Research and Practice assignment; a well-sourced historical timeline (Ada Lovelace through User Inyerface). Written component lives in `Process/`.
- **`T1_MockReview/`** — rehearsal materials for the real Thesis Review. Nearly identical content to the real deck.
- **`T2_CheckIn2.pdf`, `T2_Final.pdf`** — Thesis 2 checkpoint presentations. `T2_Final.pdf` in particular is a genuinely rich, hour-logged Sprint 1–3 record (see the Notes/ section above for its companion process-log document).
- **`T3_ArtifactDemo.mp4`, `T3_PrequarterVideo.mp4`** — standalone Thesis 3 supporting videos.
- **`T3_MockDefense/`** — rehearsal materials for the real Final Defense (flyer, poster, video). More than a rehearsal echo — contains real quotable participant reactions and confirms the theoretical framework's actual three-category organization.
- **`DEF_FinalVideo.mp4`** — the final submission video.

### Process/
Everything used *during* the actual creation of the artifact and the writeup, plus the writeup's own draft history. The most version-history-dense folder in the project.
- **`DEF_Submission/`** — **⚠️ this folder holds THE canonical, actually-submitted thesis** — `Telesz Nicole_From Insight to Action Designing_ITGM_Spring 2026.pdf`, plus the signature page and both studio components. If there's ever any doubt about which file is the "real" final thesis, it's this one, never anything in `writeups/` below, regardless of version number or similar filename. Full detail in `general-context.md`'s canonical-document callout.
- **`REV_ThesisApplication/`** — the actual written proposal, thesis application form, and timeline — formal registration paperwork, submitted for Spring 2026 (Thesis 3) registration.
- **`RP_HistoricArtifacts-Paper.pdf`** — the written component of the Historic Artifacts assignment. **This is the true earliest surviving document in the entire project (May 7, 2025)** — earlier than any Thesis 1 material, and earlier than what was originally believed to be the earliest document.
- **`T1_AF-FlowPics/`, `T1_F-FlowPics/`** — two complete 13-screen onboarding-flow exports (the "Anti-Feminist" and "Feminist" simulation flows), real design work from Thesis 1.
- **`T1_MicrositeMapsAndFlows/`** — early sitemap and flow diagrams for the microsite, simulation, and toolkit. Thesis 1-era planning stage.
- **`T3_MicrositeMapsAndFlows/`** (added 2026-08-XX, 3 files) — the later, final-thesis-era counterpart, confirmed by Nicole to be the actual figures used in the defended thesis. **`T3_MicrositeSitemap.jpg` is a real, citable find: this is the literal sitemap figure published in the final thesis, and it still says "Figma Plugin" under Engage** — an error that survived the entire review and defense process uncaught, by Nicole or any professor. `T3_ToolkitFlowchart.jpg` and `T3_ToolkitUserflow.jpg` are fully post-pivot, no plugin references.
- **`T3_OutreachFlyer.png`** — the recruitment flyer for Final Validation testing (a duplicate was found and resolved; this is the one surviving copy).
- **`DEF_ResearchFlyer.pdf`, `DEF_ResearchFlyer (letter).png`** — a separate research flyer, letter and PDF format.
- **`T3_WriteupWIPs/`** (4 files, WIP1–4) — later-stage Thesis 3 drafts of the writeup. WIP2 contains genuinely authentic unpolished process material (literal "STILL IN PROGRESS" self-notes, placeholder "XX" participant counts before real numbers were filled in).
- **`writeups/`** (11 files) — the full draft-history lineage of the thesis writeup, now fully resolved after extensive cross-referencing:
  - `T1_Draft-unversioned.pdf` through `T1_Draft-v8-Final.pdf`/`T1_Draft-v8-alt.pdf` — all confirmed **Thesis 1** drafts, tracing the title's evolution from "Feminist UX and Gender-Conscious Design: A Toolkit Necessity" to "From Insight to Action," and the theoretical framework's evolution from 2 pillars to the eventual 5.
  - `T3_Draft-v10.pdf` — a Thesis 3-era draft, **confirmed by Nicole to be a different file from the real canonical submission** despite the similar name and content — correctly coded T3, not DEF.
  - `DRAFT_v9.pdf` — the one file in this folder without full certainty. Strong internal evidence (it's the exact document where the framework first expands to all six pillars, but everything after that section is unchanged from the T1 versions) points to an abandoned early Thesis 2 writeup attempt — but neither Nicole nor Claude could confirm this from memory alone, so it stays unprefixed rather than asserted as fact.

### Testing Recordings/
Raw audio/video/chat exports from Zoom, now paired with Whisper-generated spoken transcripts (in `00_Raw_Extracted/`).
- **`DEF_FinalValidation/`** (10 participant folders, named with real first names) — the actual final validation sessions this thesis's Outcomes section is built from. All 10 read in full, both as raw transcripts and cross-referenced against Nicole's own Miro observation notes. Confirmed P-number mapping lives in `general-context.md` — **never reference these by real name in any content.** One folder (`SANSKRUTI_1`) is missing `chat.txt` and shows a genuine environmental disruption near the end of the session — confirmed to be the thesis's own flagged "P8 outlier" (Sanskruti Deshpande = P8).
- **`T3_MicrositeToolkit/`** — **not** a final validation session, despite living in the same top-level folder. Confirmed to be a single Sprint 4 co-creation session (Shivani) testing an earlier, pre-rename version of the AI toolkit's output categories. A loose `THOMPSON.mov` file also sits here, outside any transcript subfolder — confirmed via Miro notes to belong to an earlier toolkit-testing round Thompson Draper (later P2 in Final Validation) also participated in.

---

## Change Log

**Initial build (2026-08-XX).** Created from scratch, matching Meta's `STRUCTURE.md` format and depth, in response to Nicole flagging this as a real documentation gap this project didn't have yet (unlike Meta). Built from a fresh, verified directory tree at time of writing — not from memory of earlier passes in this project's long working history. Cross-referenced against `general-context.md` and `manifest.md` throughout to ensure consistency across all three documents rather than introducing a fourth, slightly-different account of the same materials.

**2026-08-XX — first new photos/diagrams added.** Nicole uploaded 7 files; 6 kept (3 genuine new Final Defense photos, 3 new final-thesis-era diagram figures in a new `T3_MicrositeMapsAndFlows/` folder), 1 confirmed exact duplicate moved to `_Duplicates/`. Updated the Photos/ and Process/ sections above to reflect both additions, including the genuinely notable finding that one of the new diagrams is a real, uncaught error preserved in the actual defended thesis document.
