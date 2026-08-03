# Wireframing Workflow

> Status: 🔒 Implementation Document
> This document governs how structural wireframes for the portfolio are generated, organized, evaluated, and either discarded or promoted. It sits between the Experience Blueprint and the Design System phase in the locked planning order (Manifesto → Questions → Knowledge Base → Deep Research → PRD → Information Architecture → **Design System** → Case Study Framework → Build). Wireframing is where the Experience Blueprint's behavioral intentions get tested for real, before any visual design commitment is made.

---

## 1. Why HTML/CSS Prototypes, Not PNGs or Direct Figma Generation

This choice follows directly from decisions already locked elsewhere in this repository — it isn't a new preference, it's a consequence.

**PNGs can't test behavior, and behavior is most of what's being tested.** The Experience Blueprint's core content — anchor-jump navigation, hover microinteractions, a dynamic progress indicator, expandable resume entries, responsive collapse on mobile, reduced-motion handling — is interaction by definition. A static image can *suggest* these things; it cannot verify them. Evaluating a wireframe for whether it satisfies the Experience Blueprint's principles requires something that actually scrolls, resizes, and responds.

**Direct Figma generation front-loads visual commitment before structural questions are answered.** Figma-first exploration (including AI-assisted generation inside Figma) tends to blur wireframing and visual design into one step, which risks locking in typography, color, or branding decisions — explicitly out of scope for this phase — before the underlying structure has been validated. HTML/CSS at this stage stays deliberately unstyled or minimally styled, which keeps the evaluation honest: a concept has to work as a *structure* before it's allowed to look good.

**Plain-text, git-diffable artifacts match the repository's existing philosophy.** The Decision Log already establishes Git as the source of truth and Markdown as the preferred format for anything important. Figma files are binary and don't diff meaningfully in version control; HTML/CSS is plain text that behaves exactly like every other artifact already living in this repository — reviewable, diffable, and recoverable through ordinary Git history.

**It keeps design and engineering in the same conversation, per the Manifesto.** Testing structure directly in code — the same medium the eventual site will be built in — means feasibility isn't discovered after the fact. A wireframe that works in HTML/CSS has already answered questions a Figma mockup would defer to a later, more expensive stage.

**It matches the AI collaboration model already established.** The Decision Log assigns Claude the role of "large-context synthesis, coding, drafting." Generating and iterating on real code plays directly to that role, and keeps the human/AI division of labor consistent with how this project already works — Nicole directs and critiques, AI drafts and revises.

---

## 2. Folder Structure

```
02_Portfolio/
└── Wireframes/
    ├── Homepage/
    │   ├── v1-baseline/
    │   ├── v2-[descriptor]/
    │   └── _Archive/
    ├── Case Study/
    │   ├── v1-baseline/
    │   ├── v2-[descriptor]/
    │   └── _Archive/
    ├── How I Work/
    │   ├── v1-baseline/
    │   └── _Archive/
    ├── Resume/
    │   ├── v1-baseline/
    │   └── _Archive/
    └── _Promoted/
        └── (references to the winning iteration per section, see Section 7)
```

**Section folders map directly to the Information Architecture, not to individual pages within it.** `Homepage` covers the full continuous-scroll experience (Hero, Work, About, Contact) as one prototype, since anchor-jump behavior between these sections can only be meaningfully tested together. `Case-Study-Template` is wireframed once as a shared structure — per the IA's template stability requirement — rather than once per flagship case study, unless a specific case study (Feminist UX, given its research/thesis weight) requires testing a structural deviation, in which case it gets its own clearly labeled sub-iteration within that folder.

**`_Archive` lives inside each section, not centrally.** Discarded concepts stay adjacent to the section they belong to, so the reasoning trail for any given page stays local and doesn't require cross-referencing a separate graveyard folder.

---

## 3. Naming Conventions

- **Section folders:** `PascalCase`, matching IA terminology exactly (`Homepage`, `Case Study`, `How I Work`, `Resume`).
- **Iteration folders:** `v{n}-{short-descriptor}` — e.g., `v1-baseline`, `v2-reduced-density`, `v3-progress-indicator`. The descriptor should describe *what changed or what's being tested*, not a vague label. A folder name should be legible on its own, without needing to open it, per the repository's standing principle of optimizing for AI and human retrieval without extra explanation.
- **Files within an iteration folder:**
  - `index.html`
  - `styles.css`
  - `notes.md` (required — see Section 4)
  - `screenshot.png` (optional — a quick static reference for skimming iterations without opening each one; never the source of truth, only a convenience)
- **Discarded concepts are moved, not deleted.** A discarded iteration folder relocates into that section's `_Archive/` with its original name intact, so its position in the sequence stays legible.

---

## 4. How Each Wireframe Iteration Should Be Organized

Every iteration folder is self-contained and answers three questions on its own, without requiring the reader to reconstruct context from elsewhere:

1. **What was this iteration testing?** Stated at the top of `notes.md` — a specific question from the Experience Blueprint or Information Architecture, not a vague "trying something new."
2. **What did the AI generate, and what was changed afterward?** `notes.md` records the prompt/context given and what human curation was applied to the output — this is both an evaluation record and a reproducibility record (see Section 9).
3. **What was the outcome?** Every iteration folder's `notes.md` ends in one of three states: **Iterate** (informed the next version), **Discarded** (see Section 6), or **Promoted** (see Section 7).

**Workflow per section:**

```
Propose a specific structural question
        ↓
Generate an HTML/CSS iteration addressing it
        ↓
Evaluate against Section 5 criteria
        ↓
   ┌────┴────┐
Iterate    Discard → _Archive         Promote → _Promoted
   ↓                                         ↓
Next version                    Decision Log entry (Section 8)
```

Iteration is expected to be non-linear — a later version can return to an earlier idea with new information. What matters is that every version is preserved somewhere (active or archived), never overwritten.

---

## 5. How Concepts Are Evaluated

Every iteration is checked against two tiers of criteria. The first tier is binary and non-negotiable; the second is judgment-based and belongs to Nicole.

**Tier 1 — Non-negotiable (automatic fail if violated, regardless of how well everything else works):**
- WCAG 2.1 AA compliance (keyboard operability, focus visibility, contrast, semantic structure)
- Full respect for `prefers-reduced-motion`
- No content reachable only through hover
- No password gates or login requirements anywhere
- No scroll-jacking or hijacked native scroll physics
- Full functional parity on mobile — not a simplified fallback
- Executive Summary content (for case study wireframes) resolves within the first viewport

**Tier 2 — Judgment-based (evaluated by Nicole, informed by the Experience Blueprint and Manifesto):**
- Does this satisfy the section's stated purpose and narrative role from the Experience Blueprint?
- Does pacing and density match what was specified for this section — or does it front-load complexity too early?
- Does any motion included serve a functional purpose, or is it decoration?
- Does the structure feel intentional and specific, or does it default toward something generic?
- Would a Recruiter doing a fast scan actually get what they need from this structure alone?

Per the Decision Log, design taste is a human responsibility — Tier 2 is never resolved by AI judgment alone. AI can flag tension against Tier 1 criteria and against the Experience Blueprint's stated principles, but the final call on Tier 2 belongs to Nicole.

---

## 6. When Concepts Are Discarded

A concept is discarded, not endlessly revised in place, when:

- It fails any Tier 1 criterion. This is immediate and automatic — no amount of Tier 2 strength offsets a Tier 1 failure.
- It fundamentally conflicts with the section's purpose as defined in the Experience Blueprint (not a minor miss, a structural mismatch — e.g., a Work section structure that can't accommodate three flagship cards plus Selected Collaborations without burying one of them).
- Nicole determines, on taste grounds, that the direction isn't right — even if every Tier 1 and Tier 2 criterion technically passes. Taste is a legitimate, sufficient reason to discard.

**When a concept is discarded:** move its folder into the section's `_Archive/`, and update its `notes.md` with a brief reason for the discard before moving it. This preserves the reasoning so the same direction doesn't get unknowingly re-explored later without the context of why it didn't work.

Discarding is not failure — it's the expected shape of iteration, consistent with the Decision Log's own critique-loop process (generate → evaluate → identify weaknesses → refine).

---

## 7. When a Concept Is Promoted to Figma

A concept is ready for promotion when **all** of the following are true:

- It passes every Tier 1 criterion without exception.
- It satisfies its section's purpose and narrative role as defined in the Experience Blueprint.
- Nicole confirms the structural and interaction direction is right — no open structural questions remain for this section.
- The only remaining open questions are visual (typography, color, imagery treatment, branding) — meaning the section has graduated from a structural problem to a Design System problem.

**Promotion process:**
1. Reference (do not move) the winning iteration folder from `_Promoted/`, pointing back to its location in the section folder — the working prototype stays where it was built.
2. Mark the iteration's `notes.md` with a `Promoted` status and the date.
3. Log the decision in the Decision Log (Section 8).
4. The promoted HTML/CSS prototype becomes the structural reference for Figma work — Figma should preserve the validated structure and behavior, not silently redesign it. Visual design has full authority over how it looks; it does not have authority to re-litigate structure that's already been promoted.

---

## 8. Documenting Changes in the Decision Log

**Promotions and discards of a full concept get a Decision Log entry.** Iteration-to-iteration tweaks within a single concept do not — that level of detail lives in each iteration's `notes.md`, consistent with the repository's existing principle of avoiding unnecessary layers of summarization. The Decision Log stays reserved for decisions that matter at the project level.

**Entry format, matching the existing Decision Log structure:**

```
### Decision
[Section] wireframe [promoted to Figma / discarded]: [concept name/descriptor]

**Why**
- [Reasoning — what made this the right or wrong direction]
- [Reference back to the specific Experience Blueprint or IA requirement it satisfied or violated]

**Status**
🔒 Locked
```

Every promotion is logged as 🔒 Locked once confirmed — this is a structural decision the Design System phase should build on, not revisit. Discards can be logged more briefly, but should still be logged if the discarded direction was seriously considered (more than one iteration deep), so the reasoning isn't lost.

---

## 9. Rules for Keeping AI Outputs Reproducible

These rules apply to every AI-generated wireframe iteration, without exception.

1. **Every iteration's `notes.md` records the prompt/context that produced it**, including which Experience Blueprint or IA sections were provided as context. This is the "Top Layer" of the Sandwich Method already established in your research — human-defined context must be documented, not just the output.
2. **Never overwrite an iteration in place.** A new idea, even a small one, gets a new version folder. History is never mutated, only extended.
3. **Every `notes.md` documents what human curation was applied after generation** — the "Bottom Layer" of the Sandwich Method. If Nicole edited the AI's output directly, that edit should be noted, even briefly, so the record reflects the actual authorship split.
4. **Each iteration is self-contained.** No iteration should depend on an external, undocumented dependency that could silently change its behavior later (an unpinned CDN script, an assumed but unlisted library version). If an iteration uses something in Section 2's file list, that dependency should be named explicitly in `notes.md`.
5. **Avoid non-deterministic elements in generated code** (randomized values, time-based variation) unless the randomness itself is the thing being tested — reproducibility requires that opening an iteration folder later produces the same result it did when it was evaluated.
6. **Note the date and tool used to generate each iteration** in its `notes.md`. A reproducibility record is only useful if it's clear what produced the artifact and when.

These rules exist so that any iteration — promoted, archived, or mid-sequence — can be understood, reopened, and reasoned about months later without relying on memory of the conversation that produced it.