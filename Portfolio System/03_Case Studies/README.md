# Case Studies — Content System

> This folder is where the actual narrative content and supporting media for each flagship project gets built out, to fill the locked Case Study Template (`_Promoted/Case Study/` in the Figma/Framer build).

---

## Boundary: `_Promoted/` and Framer (locked 2026-08-18)

`_Promoted/` is a **frozen snapshot of the mid-fi wireframing phase**, not an active build target. This project has moved to a different phase (content creation, this folder). Claude may **read** `_Promoted/` to check exact locked structure, section order, or copy already fixed there (e.g. the footer CTA, hero statement) — but does **not** write, edit, or add anything to it going forward, for any reason.

Framer itself (the live, high-fidelity build) is entirely Nicole's — Claude has no access to it and does not attempt to simulate, describe, or treat anything it produces as if it's going directly into that build. Everything Claude generates in this system lives in `01_Content/` as plain content/copy. Moving that content into Framer is a manual step Nicole does herself, on her own time.

---

## Structure

```
03_Case Studies/
  _Template/              ← the reusable skeleton. Copy this to start a new project.
    00_Raw/                 ← unfiltered dump of everything you have
      Process/                sketches, wireframes, research docs, decks
      Visuals/                final/polished mockups, prototypes, screenshots
      Photos/                 presentation photos, team photos, physical artifacts
      Notes/                  written notes, journal entries — unorganized is fine
      Figma_Exports/          exported frames/boards from Figma (PNG/PDF)
      Miro_Exports/           exported boards from Miro (PNG/PDF)
      manifest.md              running log of what's in this folder
    01_Content/              ← one file per locked case study section (drafting workspace)
      00-executive-summary.md
      01-context.md
      02-discovery.md
      03-constraints.md
      04-decisions.md
      05-production.md
      06-outcome.md
      07-retrospective.md
      08-tools-and-skills.md
      09-deep-technical.md
    02_Selected_Assets/      ← final, curated images actually used in the case study
      README.md
    FINAL-COPY.md            ← THE COPY-PASTE FILE. Clean finished text only, in Framer order.

  Meta/                    ← same structure, populated for Meta
  Feminist UX/             ← same structure, populated for Feminist UX
  Terra Dotta/             ← same structure, paused (card not yet live)
```

---

## The Workflow

**1. Gather → drop into `00_Raw/`.**
No need to organize before dropping things in — just sort roughly into the right subfolder (Process / Visuals / Photos / Notes / Figma_Exports / Miro_Exports). Figma and Miro files themselves can't be read directly, so export key frames/boards as images first.

**2. Log it in `manifest.md` — Claude does this, from what you tell me.**
Drop files into the right `00_Raw/` subfolder yourself, then just describe them to me in chat — even roughly, even in a batch ("these five are early sketches from week one," "this is the Miro board where we clustered research"). I'll write the manifest rows (type, phase/date, description, likely section) and flag my section guesses so you can correct them. You don't need to touch the table format yourself.

**3. Section-by-section conversation.**
For each project, we go through the ten files in `01_Content/` one at a time. Claude asks the guiding questions already written into each file, you answer in the chat, Claude drafts the section copy directly into the file's "Your Answers" area, you edit/correct there until it's right.

**3b. Once a section is right, it graduates to `FINAL-COPY.md`.**
The polished, final version of that section's text gets copied into the project's `FINAL-COPY.md` (that section's status flips from "Not started" to "Ready"). `01_Content/` keeps the full working history and reasoning; `FINAL-COPY.md` stays clean — just text you can select and paste straight into Framer, in the same order as the template's fields.

**4. Curate `02_Selected_Assets/`.**
As we go section by section, we'll flag which raw assets actually belong in the finished piece and move/rename them into `02_Selected_Assets/` using the section-prefixed naming convention (see that folder's own README).

**5. Content moves to the live build — by Nicole, in Framer.**
Once a project's ten files are filled and assets are curated, Nicole pastes the copy into the Framer build herself. Claude has no access to Framer and does not touch `_Promoted/` in this phase (see Boundary note above) — this folder is the source content, the live build is entirely Nicole's hands.

---

## Starting a New Project

Copy `_Template/` wholesale, rename it to the project name, and start dropping materials into `00_Raw/`.
