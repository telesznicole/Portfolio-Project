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
  README.md                 ← this file
  TONE-AND-VOICE.md          ← shared voice/tone guide across ALL case studies, plus reusable
                                portfolio-wide microcopy (e.g. the end-of-page redirect line).
                                Not project-specific — read once, applies everywhere.
  _Template/              ← the reusable skeleton. Copy this to start a new project.
    00_Raw/                 ← unfiltered dump of everything you have (2026-08-23: Nicole
                                restructured this to Notes/Other/Photos/Presentations/Process
                                — the set below is a per-project starting point, not fixed;
                                expect it to keep evolving project to project)
      Notes/                  written notes, journal entries — unorganized is fine
      Other/                  catch-all for anything that doesn't fit the other folders
                                (brand assets, exported Figma/Miro boards, etc.)
      Photos/                 presentation photos, team photos, physical artifacts
      Presentations/          client-facing decks, presentation recordings
      Process/                sketches, wireframes, research docs, process documentation
      manifest.md              running log of what's in this folder
    00_Raw_Extracted/       ← NOT in the base template, created per-project only if needed.
                                Plain-text/resized-image versions of anything too large for
                                Claude to read directly (large PPTX/PDF/HTML, high-res photos).
                                Mirrors 00_Raw/'s structure for whatever needed conversion —
                                doesn't mirror folders with nothing to convert (see that
                                project's STRUCTURE.md for the specifics of what does/doesn't).
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
      CURATION-INDEX.md      ← NOT in the base template — created per-project once assets
                                are actually selected. Real file-copy record: exact source
                                path → target filename → caption for every chosen image.
                                Necessary because Claude can't copy binary image files
                                (only relocate), so this index is the actual curation
                                deliverable; the mechanical file-copying is done by hand.
    FINAL-COPY.md            ← THE COPY-PASTE FILE. Clean finished text only, in Framer order.

  Meta/                    ← same structure, populated for Meta. Also has its own
                                STRUCTURE.md — see note below.
  Feminist UX/             ← same structure, populated for Feminist UX
  Terra Dotta/             ← paused (card not yet live), just a placeholder README
```

**A project's own `STRUCTURE.md`** (e.g. `Meta/STRUCTURE.md`) is not part of the base `_Template/` — it gets created per-project once real raw materials exist, documenting that specific project's actual `00_Raw/`/`00_Raw_Extracted/` structure (which will differ project to project — see that file's own scope note for exactly what it covers and doesn't).

---

## The Workflow

**1. Gather → drop into `00_Raw/`.**
No need to organize before dropping things in — just sort roughly into the right subfolder (currently Notes / Other / Photos / Presentations / Process, though this set is a starting point and may already look different on a given project — check that project's own `STRUCTURE.md`). Figma and Miro files themselves can't be read directly, so export key frames/boards as images first (see `manifest.md`'s "Notes on File Types" for where those exports typically go).

**2. Log it in `manifest.md` — Claude does this, from what you tell me.**
Drop files into the right `00_Raw/` subfolder yourself, then just describe them to me in chat — even roughly, even in a batch ("these five are early sketches from week one," "this is the Miro board where we clustered research"). I'll write the manifest rows (type, phase/date, description, likely section) and flag my section guesses so you can correct them. You don't need to touch the table format yourself.

**3. Section-by-section conversation.**
For each project, we go through the ten files in `01_Content/` one at a time. Claude asks the guiding questions already written into each file, you answer in the chat, Claude drafts the section copy directly into the file's "Your Answers" area, you edit/correct there until it's right.

**3b. Once a section is right, it graduates to `FINAL-COPY.md`.**
The polished, final version of that section's text gets copied into the project's `FINAL-COPY.md` (that section's status flips from "Not started" to "Ready"). `01_Content/` keeps the full working history and reasoning; `FINAL-COPY.md` stays clean — just text you can select and paste straight into Framer, in the same order as the template's fields.

**4. Curate `02_Selected_Assets/`.**
As assets get selected during section-by-section drafting, Claude records them in a `CURATION-INDEX.md` inside `02_Selected_Assets/` — exact source path, target filename (section-prefixed naming convention, see that folder's README), and caption. **Important limitation:** Claude cannot actually copy the image files there — only relocate (`move_file`), and moving originals out of `00_Raw/` would destroy the source archive, while the only alternative copies (in `00_Raw_Extracted/`) are resized/lower-quality, not suitable for final production use. So the index is the real curation deliverable; copying the actual files from source to `02_Selected_Assets/` at full quality is a manual step Nicole does herself, straight from the index. (This was a real gap on Meta — extensive selection/captioning happened throughout section drafting, but nothing had actually been indexed until a dedicated audit caught it. Going forward, the index should be updated in the same turn an asset is selected, not batched up for later.)

**5. Content moves to the live build — by Nicole, in Framer.**
Once a project's ten files are filled and assets are curated, Nicole pastes the copy into the Framer build herself. Claude has no access to Framer and does not touch `_Promoted/` in this phase (see Boundary note above) — this folder is the source content, the live build is entirely Nicole's hands.

---

## Starting a New Project

Copy `_Template/` wholesale, rename it to the project name, and start dropping materials into `00_Raw/`.
