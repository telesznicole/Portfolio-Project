# General Context Notes: Portfolio Build

> Free-form context that gives background to the project but doesn't neatly belong in any single locked case-study section. Built conversationally, same pattern as Meta's and Feminist UX's `general-context.md`.

---

## ✅ ALL BODY TEXT COMPLETE (2026-09-30)

All ten sections (Executive Summary, Context, Discovery, Constraints, Decisions, Production, Outcome, Retrospective, Tools & Skills, Deep/Technical) are written and locked, each with full revision history in its own `01_Content/*.md` file. `FINAL-COPY.md` holds the complete, clean copy-paste text. **What remains is visuals only**, deliberately deferred by Nicole until the written content was finished, matching the same phase order used on Feminist UX.

## 🔒 Context-Gathering Phase: COMPLETE, READY FOR SPINE (2026-09-29)

Full filesystem inventory done (see "FULL FILESYSTEM INVENTORY" section below), two real gaps found and closed (`01_Me/`, `02_Portfolio/`, both had never been opened before this pass). **Two standing clarifications from Nicole (2026-09-29), both incorporated throughout this file:** Terra Dotta is deliberately deprioritized further, in favor of finishing Portfolio Build first (a sequencing choice, not a change to its already-paused status); Feminist UX's SEO description, initially flagged as a stale placeholder, is confirmed intentional and final, not a loose end needing action. Ready to move to spine on Nicole's go-ahead.

## 🔒 Spine, Preliminary (2026-09-29)
Context → Discovery → Constraints → Decisions → Production → Outcome → Retrospective → Deep/Technical, with two real structural decisions made through direct back-and-forth, not the default template order:
- **"System before pages" moved into Decisions as a real, first decision** (with its true original July 29 reasoning: prevents inconsistent styles, reusable components, faster future work), rather than explained for the first time inside Production. This is chronologically accurate (it really was the first real decision, before any design work) and lightens Production, which no longer has to both justify the system's existence and describe the build.
- **Decisions and Constraints deliberately split into two different, complementary jobs, at Nicole's direction**: Decisions states what the actual workflow *was* (the real, named division of labor — Nicole: vision, taste, final decisions; AI: large-context synthesis, coding, drafting — and the real critique loop: direction → AI proposes → critique → revise → repeat). Constraints proves that division actually held under real pressure, using three specific, substantive catches, not a bug list: the component-drift catch (an AI claim of "exact reuse" that wasn't, caught twice), the conceptual misread catch (the "Optional" tag — AI cited the right research and drew the wrong conclusion from it), and the How I Work scope pivot (AI technically satisfied the written brief while being wrong about what the page needed to mean). Together: Decisions shows the process, Constraints shows Nicole visibly steering it, with real evidence, not just a claimed oversight role.

**Standing rule for drafting, established 2026-09-29, before any Portfolio Build content is written**: every section must ground a reader in plain terms before going specific — what MCP is, what a critique loop means here, why "system before pages" is a real choice and not an obvious one — rather than assuming context this conversation already has. This is the same lesson already learned once on Feminist UX's Production section (the "state plainly what the page *is* before anything else" rule), and Nicole flagged directly that assumed-context was a real, repeated pitfall in past work that she does not want repeated here. Treat this as load-bearing for every section, not a one-off fix.

---

## What This Project Is (established 2026-09-25)

A case study about Nicole's own portfolio site: its redesign and rebuild, and, deliberately, the process behind it. Internal working name: **"Portfolio Build"** (folder and documentation only). **Public page title: "Behind the Portfolio."** **Tag: "AI-Assisted Design."** (Both locked 2026-09-28; the title was stated a little tentatively and can be revisited.)

**Confirmed scope, directly from Nicole:**
- The site is basically done and ready to be documented now, not waiting on further changes.
- Covers **both** the visual/interaction redesign of the site itself **and** the underlying system used to build the case studies (the raw-materials archive, `general-context.md`, `STRUCTURE.md`, `CURATION-INDEX.md`, the Decision Log pattern). This is one case study, not two.
- **The AI-collaboration process is deliberately central to the story**, not a footnote. Nicole clarified what "connecting things" means: the filesystem connection, the overall process, and the documentation system, working together. She wants to show off what she built.
- Framed for recruiters as a genuine, current skill signal: using AI as a real force multiplier in an actual working process, not a novelty or a shortcut.
- **ChatGPT is not to be mentioned**, even though it appears throughout the real Decision Log (research/critique role). Google Deep Research can be mentioned in the body, just not in the At a Glance box.
- **A human-influence throughline is required across the whole telling**, not just in Retrospective: where Nicole personally stepped in, what she dropped or overrode, when and why she iterated, and how she compensated for what AI alone could not do. This is now Constraints' actual subject (see below), not a generic list of project limits.
- **Standing caution:** an earlier LinkedIn post draft kept pulling in thesis framing by mistake. This project is separate from the Feminist UX thesis; stay alert to that carryover.

## Real Raw Material: This Already Exists, and It Is Extensive

Nicole asked for a full, thorough read of the shared Portfolio Decision Log and the research folders before locking the spine. That read is now genuinely complete for the Decision Log (all 298KB, read fully, end to end, through Meta's finishing touches and up to the point Feminist UX work began) plus three of seven research documents read in real depth, on 2026-09-28. This changed the plan significantly: **this project already has a rich, real archive**, most of it in the shared `00_START_HERE/Portfolio Decision Log.md` plus supporting documents in `02_Portfolio/` and `04_Research/`.

**Correction to an earlier note in this file**: the wireframes live in `05_Assets/Low-Fi Wireframes/` and `05_Assets/Mid-Fi Wireframes/`, not a single `05_Assets/Wireframes/` folder as the Decision Log's own shorthand paths imply. Confirmed by direct folder listing. **These are real, functional HTML/CSS prototypes, not static image mockups** — every version (`v1` through the final promoted round, for each of four pages) is a working coded page with its own `notes.md` explaining the reasoning. This matters for Production: "showing the mockups" could mean screenshots, or it could mean actually referencing real code, which is a stronger, more technical proof point than an image would be.

**Folder cleanup (2026-10-01)**: this project's own `00_Raw_Extracted/` was removed entirely, and the empty `00_Raw/Other/`, `Presentations/`, `Process/`, and `AI-Collaboration/` subfolders were deleted by Nicole once confirmed empty. Every raw material this project actually ended up needing was a screenshot, small enough to never trigger the large-file extraction workaround. Only `00_Raw/Notes/` and `00_Raw/Photos/` remain, and that's the complete raw archive for this project. See `manifest.md` for the real file list.

### The real early philosophy (2026-07-29 to 2026-07-31), before any design work started
- Portfolio treated as a **product**, not a website. System built **before** pages.
- A real, named division of labor: Nicole (vision, taste, final decisions), ChatGPT (strategy/critique — not to be named in this case study), Claude (large-context synthesis, coding, drafting), Google Deep Research (market research).
- An explicit workflow loop, stated outright: Nicole provides inputs → AI proposes an artifact → Nicole critiques → AI revises → done. Critique loops, not first-pass acceptance, are named as the actual method for quality.
- A long-term, AI-agnostic knowledge base (Markdown, Git, structured folders) chosen deliberately over a Claude-only setup, specifically so the system would "work with any future AI."
- GitHub adopted as source of truth, SSH auth for reliability across tools, repo cleaned (`.gitignore`, removed tracked `.DS_Store`) before granting Claude any access at all.
- Claude Desktop + Filesystem MCP connected, scoped narrowly to the Portfolio Project directory only, "to maintain focus and privacy."
- Nicole's own stated realization from this phase, worth quoting close to verbatim: "The goal is not to automate the design process or outsource judgment. The goal is to create a system where AI can accelerate exploration, organization, and artifact creation while human perspective drives meaning, taste, and direction."

### The wireframing phase (2026-08-04 to 2026-08-05): real, extensive iteration history
This is the richest raw material this project has. Four pages went through full, documented wireframe rounds, each with real rejections, real reasoning, and Nicole's actual quoted feedback:
- **Homepage: 9 rounds** (`v1` through `v9-rounded-final`), from 5 initial concepts down to one confirmed direction. Real moments: round 2 was fully discarded because Nicole called out that three "different" concepts were actually the same layout three times ("This was a bit of a disappointment") — a real process correction about what a comparison round is supposed to test, not just a content fix. A structural reorder (moving the stats/credibility banner from after Work to after About) was an explicit, acknowledged override of an earlier decision, because Nicole's own narrative logic ("who is Nicole, then how do we know she's actually good") beat the original reasoning.
- **Case Study Template: 7 rounds** (`v1` through `v7-final-candidate`), promoted 2026-08-05. Two real interaction bugs were caught and fixed before promotion (a scrollspy mis-highlight, sticky-nav text occlusion) — Nicole's own standing note: interaction correctness matters even at wireframe stage, not just visual polish.
- **Resume: 3 rounds.** A real component-integrity bug: `v1-baseline` silently redefined the existing `.engagement-tag` class for a new purpose, so nothing named `.engagement-tag` on the page matched the real component used elsewhere anymore. Nicole's own framing of the fix is genuinely sharp: a classification tag is an *identifier* ("what kind of project was this"), a skill/tool pill is *information* ("what do I know") — two different jobs, so two different, honestly-named components.
- **How I Work: a real, major pivot, not incremental polish.** Round 1 (three concepts) was fully discarded for being "too much reading and words... not something that can be skimmed." Round 2's revised concepts were discarded for a *different, deeper* reason: Nicole caught that Claude had built the page around the wrong subject entirely — a log of how the portfolio itself was built, when the page needed to be about her actual design philosophy and how she's distinct from other designers. Her own words: "If I want a case study of my website, I would have it as an actual case study, not on a page titled How I Work." The page went to round 7 before being promoted, converging on five real, curated principles from the Manifesto's full set, each tied to a real project.

### Real, repeated bugs and human corrections — the actual material for Constraints
Nicole wants Constraints reframed around where her judgment and human touch had to catch or compensate for what AI got wrong or couldn't do alone. This is genuinely well-documented, not something that needs inventing:
- **A double plus/minus symbol bug**, present on every collapsible element site-wide, including already-promoted pages — caused by a `::before` rule inserting a symbol alongside literal text instead of replacing it. Caught by Nicole, fixed across five separate files at once.
- **A false-positive focus outline** ("black box") appearing on mouse clicks, not just keyboard navigation — caused by using bare `:focus` instead of `:focus-visible`. Same five-file fix.
- **A component silently drifted from its real source not once but twice**: `.engagement-tag` in Resume's `v1-baseline` (above), and separately, a `.quote-card` in How I Work's `v5-converged` that was claimed to be "reused exactly from Homepage" without actually being checked against the source — padding, border color, quote-mark glyph, and even the citation were all invented approximations. Nicole caught this by eye ("Something about it just looks off") before it was confirmed as a real, checkable discrepancy. This is a genuine, repeated failure pattern worth naming directly in the case study: a claim of exact reuse is not the same as verified reuse.
- **A stale documentation bug**: two promotion files still said "Pending" in their own Outcome sections despite having been promoted, and confirmed, and built on top of for most of a working session — caught on a review pass, not assumed correct.
- **A missed instance during a "done" verification**: after fixing broken cross-page navigation links across four pages, one more instance (a mobile nav panel's separate copy of the same link) was still broken — missed because the verification pass only checked for already-known broken patterns, not a fresh search. Caught on a final sweep. Nicole's own standing lesson, worth using close to verbatim: "a 'these are now fixed' claim is only as good as what was actually re-checked, not what was assumed to be one edit away from identical markup."
- **A conceptual misreading, not just a technical bug**: an "Optional" tag was added to the Deep/Technical section, citing the Experience Blueprint's own language about that layer being for readers who scroll that far. Nicole's correction distinguished pacing content for an early-stopping visitor from actually labeling it skippable for every reader, including a Hiring Manager — "citing the right research and drawing the wrong conclusion from it," a distinct failure mode from a technical mistake.
- **A real scope misread, corrected directly**: How I Work's first two full rounds were built around the wrong subject (a build-process log) despite technically satisfying the page's written brief — Nicole redirected based on her own judgment of what the page needed to *mean*, not a spec violation.

### The technical pipeline (2026-08-17), a real answer for Deep/Technical and Production
Adopted: Claude Code + Figma's remote MCP server ("Code to Canvas") to bring wireframes into Figma as editable frames, manual refinement, then Framer's native "HTML to Framer" Chrome extension to bring refined Figma work into Framer, then manual refinement there. Chosen specifically because both halves run on infrastructure Nicole already pays for (Claude Pro, a paid Figma seat) rather than adding a new tool. Two limitations were identified going in, not discovered as surprises: neither hop preserves CSS media-query responsiveness (Framer's breakpoint system has to be rebuilt by hand) or JS-driven interactivity (rebuilt with Framer's native motion tools).

**A real, concrete technical troubleshooting note, genuinely quotable**: the documented install path (`claude plugin install figma@claude-plugins-official`) failed with a "not found in marketplace" error. The working fallback was manual registration (`claude mcp add --transport http figma-remote-mcp https://mcp.figma.com/mcp`), confirmed successful and recorded for future reference.

### A supporting research document exists, but treat it as research, not as a literal build log
`04_Research/AI Workflow/AI Design Portfolio Workflow.md` is a detailed "enterprise architecture" style research document (reads as informed by ChatGPT/Google Deep Research) proposing an idealized multi-tool AI pipeline, including things like GitHub MCP via Docker, PreToolUse hooks, and a tiered CLAUDE.md system. **This document informed direction; it is not a confirmed record of what was actually implemented.** Cross-check any specific technical claim from this file against the real Decision Log before treating it as fact for the case study. The one part independently confirmed real and adopted: the Figma Code to Canvas + Framer HTML to Framer pipeline (see above), which the Decision Log itself documents being set up and used.

### The Portfolio Manifesto — Nicole's own real design philosophy, in her own words
`00_START_HERE/Portfolio Manifesto.md` contains at least 11 named principles (confirmed count still pending — the file was read up to "Accessibility Is Part of Good Design"; a couple more may follow). Directly relevant to this case study's throughline:
- **"AI Should Amplify Human Creativity"** — her own words, close to verbatim: "AI is an incredible collaborator. It is not a replacement for human thought... The designer should still be recognizable in the final work. The point of using AI isn't to become invisible. It's to create more space for the parts of design that only humans can do." This is likely the single best real quote for this case study's own throughline, since it's pre-existing, authentic, and not written for this purpose.
- **"Research Exists to Challenge Me"** — ties directly to the evidence-first Discovery phase and to the repeated pattern of Nicole catching AI's own errors.
- **"Feedback Is Something to Synthesize"** — relevant to the critique-loop workflow itself.
- Per the Decision Log, five of these principles (not all eleven-plus) were later curated for the actual How I Work page, each tied to a real project — worth deciding whether Portfolio Build's own Retrospective/Decisions draws from the same five or pulls fresh from the full Manifesto.

### How the case-study system itself was actually built (2026-08-20 onward) — the real origin story for Production's "documentation system" half
This is the exact system currently being used to build Portfolio Build itself, and its real history is genuinely usable content:
- **The raw-materials system** (`00_Raw/`, `00_Raw_Extracted/`, `manifest.md`, `STRUCTURE.md`, `FINAL-COPY.md`) was designed and built specifically ahead of Meta's content drafting, not planned from the start of the whole project. `00_Raw_Extracted/` exists as a real, necessary workaround: large PPTX/PDF/HTML files broke the filesystem connection when read directly.
- **NDA guidelines and a visible redaction device** (▓▓▓) were built for Meta specifically, resolving a real tension between the NDA's own permissive text and narrower informal client guidance — the narrower, named-approver guidance won as the standing rule. The redaction device is framed as solving a content-quality problem, not just a compliance one: writing confidently up to a visible cut produces better prose than writing vaguely around a restriction.
- **`TONE-AND-VOICE.md` was built collaboratively while drafting Meta's own Context section**, through direct iteration on one paragraph, then extracted into reusable guidance. Its core finding, genuinely quotable: specificity, not formality, is what actually reads as "less academic."
- **This system caught itself making real, repeated mistakes, multiple times, across Meta's build** — worth naming directly, since the exact same pattern has recurred in this very session:
  - **The wrong-tool bug, twice.** Claude's own sandboxed file-creation tool (which writes to a private container, not Nicole's actual machine) was used instead of the correct filesystem MCP tool, at least twice across the Meta build (once during a content cleanup pass, once creating `CURATION-INDEX.md`). Both times it silently "succeeded" against the wrong filesystem before being caught. The exact same category of mistake happened multiple times during this very Portfolio Build session too.
  - **"Approved in chat" is not the same as "saved to disk."** After four full sections were approved in conversation, none had actually been written to file — caught by Nicole noticing herself, not by Claude flagging it.
  - **A "these are now fixed" claim is only as good as what was actually re-checked.** A broken nav link survived an entire "done" verification pass because the check only searched for already-known broken patterns.
  - **At least four separate full audits of the system were performed across Meta's build** (all self-initiated or at Nicole's request after she caught something Claude had claimed was done but wasn't), each finding genuinely new, real issues — stale file references, a duplicated asset folder, an undocumented subfolder, inherited stale template files. The system's own real reliability came from repeated, genuine verification, not from getting it right the first time.
- **Real finishing-touches work, useful for Outcome/Production's polish**: SEO meta descriptions drafted per page, a `05_Assets/Site Assets/` folder built for the social preview image and app icon, and a real microanimation system (scroll-triggered fade + Y-offset reveals, extending the hero's own motion language down the whole page) — all closed out before Nicole moved on to Feminist UX.

## Real, Verified Numbers Worth Knowing
- 9 Homepage wireframe rounds, 7 Case Study Template rounds (plus a later re-promotion to a 10th round once real content structure was added), 3 Resume rounds, 7 How I Work rounds — all directly countable from the Decision Log, now confirmed via a complete read, not an estimate.
- **The 58 decisions / 45 archived-iterations / 9 homepage-rounds figures are confirmed to belong to a discarded concept** (`v2-decision-log-excerpt`, rejected specifically for being about the wrong subject) and were never confirmed present in the actual final How I Work page. Do not use these three numbers as fact for Portfolio Build's own copy without an independent recount.
- Meta's case study alone, once finished, involved: 16 curated images, 10 full Layer 2/3 content sections, and at least 4 separate full-system audits before Nicole's push.

## Standing Instructions From Nicole
- **Written content first, media after.** She wants to generate all the written content before going back to screen recordings and other visuals, because she wants this live as soon as possible.
- **Her curiosity and motivation should be highlighted throughout the entire telling**, not only in Retrospective. The Problem field in the At a Glance box is the first place this shows up.
- **The problem is two-fold**: she wanted the portfolio to show more depth and craft, and she was curious how AI could fit into her process. Both halves need to be present.
- **Language to avoid**: "outdated" (she called it mean). Keep the tone free of self-critique about the old site.
- **Recruiter-relevant framing** throughout, same as the other case studies.
- **Zero em dashes in page copy**, confirmed 2026-09-28 (same rule as Feminist UX).
- **Wants space specifically for**: her actual technical setup and flow (Claude/MCP configuration), and for showing the real back-and-forth nature of the collaboration (not just describing it abstractly).
- **Wants low-fi and mid-fi mockups showcased** — real material exists and has now been used: the Homepage low-fi/mid-fi/high-fi progression trio is locked into Production's "Design Process" subsection. Full wireframe archive lives in `05_Assets/Low-Fi Wireframes/` and `Mid-Fi Wireframes/`.
- **Constraints should NOT be generic project limits.** Reframed, per Nicole's direct instruction: constraints are about where AI could not do it all, and where her own finesse as a human designer had to step in — the real bugs and corrections documented above are the actual substance for this section, not invented placeholder limits like timeline or budget.

## Confirmed Facts

**Timeline**
- The real Decision Log's first entry is **July 29, 2026** (portfolio-as-product philosophy). Nicole separately told Claude her "first thing" was **Aug 3** — these are five days apart, and it is not yet resolved which one she considers the true start, or whether Aug 3 refers to something more specific (e.g., first actual design/wireframe work, versus July 29's planning/philosophy work). Worth asking directly before Context is drafted.
- She finished a few weeks before Sept 25. Her LinkedIn post announcing the overhaul went up about two weeks before Sept 25 (roughly Sept 11), and that is the best anchor for the finish date. The date is approximate.
- **Duration in the At a Glance box: 6 weeks**, Nicole's own call.
- Lesson: Claude has no reliable record of dates from prior sessions on its own. Any duration or date claim needs to come from Nicole or from the Decision Log's own dated entries, not from Claude's inference.

**Traffic (from Nicole)**
- Before the launch: roughly 0 to 4 views across different months.
- Launch day: 73 views in a single day, with high numbers on the following days.
- Since the LinkedIn post: about 3 to 10 views (Nicole confirmed this covers the period since posting; whether it's a daily or other rate wasn't stated).
- Caveats to carry into Outcome: the spike came from the LinkedIn post, so it reflects the post as much as the redesign. Nicole is also applying to jobs, which likely inflates recent traffic. Absolute numbers are small, so honest framing matters.

**At a Glance box (locked 2026-09-28)**
- Role: Product Designer & Developer
- Stack: Figma, Framer, Claude + MCP, TypeScript
- Duration: 6 weeks
- Problem: Wanting my portfolio to show more depth and craft, and testing how AI could fit my process
- Proof: AI-assisted build, 73 views on launch day
- Full reasoning and rejected alternatives live in `01_Content/00-executive-summary.md`.

## Spine — LOCKED AND FULLY IMPLEMENTED (superseded the proposal below, all 10 sections written)
The spine actually used matches the proposal below closely, with the two refinements noted at the top of this file under "Spine, Preliminary (2026-09-29)": system-before-pages moved into Decisions, and Decisions/Constraints split into complementary jobs. All ten sections (Executive Summary through Deep/Technical) are written, locked, and documented in full in their own `01_Content/*.md` files, with `FINAL-COPY.md` holding the clean final text. The proposal below is kept for historical reference only, not as a live plan.

<details>
<summary>Original spine proposal (2026-09-28), kept for reference</summary>

- **Context:** short. The two-fold starting point (depth/craft, curiosity about AI), and briefly the real July 29 philosophy decisions (product not website, system before pages) as the actual starting mindset.
- **Discovery:** the evidence-first research phase, Discovery completed *before* any design work began, a real, specific, checkable claim (research themes: hiring expectations, portfolio storytelling, AI workflows, interaction design, designer-developer positioning).
- **Constraints:** reframed per Nicole's instruction, where AI's shortcomings showed up and where human judgment had to compensate.
- **Decisions:** the core rigor story.
- **Production:** two subsections, matching Feminist UX's per-page split.
- **Outcome:** the live site, launch-day traffic with honest caveats.
- **Retrospective:** Nicole's growth directing AI.
- **Deep/Technical:** the actual technical setup and real examples of back-and-forth AI collaboration.

</details>

## ✅ FULL FILESYSTEM INVENTORY — COMPLETE (2026-09-29)

Nicole directly challenged whether prior "thorough" claims in this project were actually verified, citing a pattern of reassurance without real completion. This section is the honest, complete answer: every relevant file in the Portfolio System has now actually been opened and read, not assumed covered.

**`00_START_HERE/`** — all 4 files read: `README.md` (confirms the exact 4 documents any assistant should read first: Manifesto, Decision Log, Professional Profile, Product Vision — all 4 now genuinely read), `Portfolio Manifesto.md` (fully read, exactly 13 principles), `Portfolio Decision Log.md` (fully read, all 298KB, end to end), `Portfolio Questions.md` (short foundational reflection prompts, including "How should AI collaboration be communicated?" — confirms this was always a deliberate open question for the whole project, not invented for Portfolio Build).

**`01_Me/`** — a genuine, serious gap until this pass: this entire folder had never been opened before. All 4 real files now read: `Portfolio Overview.md` (Nicole's own stated positioning: "I bring a uniquely technical understanding to my deeply human design philosophy"; full real project list including **Hack iX**, a previously-unknown project where Nicole already used AI-assisted dev workflows — Framer plus Loveable — before this one), `Interview Story Bank.md` (real STAR-format stories, including Hack iX's own "failure/ownership" story), `Professional Profile.md` (confirms "AI-Assisted Design" is already a real, existing skill tag on Nicole's actual resume — not something invented for this case study's tag — and that Claude is already listed among her real tools), `Resume.md` (consistent with Professional Profile). `Resume.pdf` is a binary duplicate of `Resume.md`'s content, not separately read.

**`02_Portfolio/`** — also a genuine gap: only the file listing had been seen before, none of the actual files. All 5 now read: `Experience Blueprint.md` (the master document behind every "per Experience Blueprint §2.5" reference seen throughout every case-study template — defines the Layer 1/2/3 pacing model, 11 governing design principles, and the full section-by-section experience rationale), `Information Architecture.md` (confirms Terra Dotta as a third flagship case study alongside Meta and Feminist UX in the sitemap, and that every case study's Layer 3 is required to link to `/how-i-work` "where AI-assisted workflow materially shaped the project" — an IA-mandated cross-link, not incidental), `Product Vision.md`, `SEO Page Descriptions.md` (confirms Terra Dotta's SEO description is "not drafted yet, project paused" — resolves the open question about its status; also originally flagged Feminist UX's SEO description as a stale placeholder pending revisit — **Nicole confirmed directly (2026-09-29) that description is intentional and already set in stone, not a loose end needing action; correction noted, no further work needed there**), `Wireframing Workflow.md` (the real, detailed rationale for HTML/CSS wireframes over PNGs or direct Figma generation — genuinely strong Decisions material).

**`03_Case Studies/`** — Meta and Feminist UX both known in full depth from direct work earlier in this same conversation. `_Template/` fully read. `README.md` and `TONE-AND-VOICE.md` fully read. `Terra Dotta/` folder exists but is out of scope for Portfolio Build; confirmed paused per the SEO doc below, and **deliberately deprioritized further by Nicole (2026-09-29)** in favor of finishing Portfolio Build first — a sequencing choice, not a change to Terra Dotta's own status.

**`04_Research/`** — all 7 real research documents fully read end to end: Portfolio Strategy, Audience, Industry Trends/AI Impact, Interaction & Experience, Marketing & Hiring, Competitive Landscape, and AI Workflow. `Design Exploration/` surveyed structurally, not read file-by-file, per Nicole's explicit direction: confirmed 8 categories (Case Studies, Homepage, Interactions, Layout, Motion, Navigation, Typography, Writing) across roughly 20 individual named designer references (Abdulqahar, Andrea, Midu, YanXin, and others), matching the exact names cited throughout the Experience Blueprint's own reasoning.

**`05_Assets/`** — `Low-Fi Wireframes/` structure fully confirmed (real HTML/CSS, versioned per page, every iteration with its own rigorous `notes.md`), one full sample opened. `Mid-Fi Wireframes/` structure fully confirmed (4 flat Figma-stage PNGs, one per page); files too large to view directly without Nicole resizing them, same limitation already solved on Meta's project. `Site Assets/` fully read (brand/favicon/social-preview files, self-explanatory).

**`06_AI/`** — confirmed genuinely empty: `TBD.txt` is a placeholder listing files that don't exist yet (`Claude Instructions.md`, `Prompt Library.md`, `AI Workflow.md`, `Session Notes/`). Nothing else to read here.

**What remains deliberately unread, by explicit scope decision, not oversight:**
- `Design Exploration/`'s individual screenshot files (~50+ images) — confirmed as a browsing reference archive, not a report; Nicole confirmed this doesn't need a file-by-file read.
- The bulk of `Low-Fi Wireframes/`'s individual iteration files beyond the one sample opened — the documentation pattern is confirmed consistent, and reading every remaining file would be highly repetitive given that confirmed pattern.
- `Mid-Fi Wireframes/`'s 4 PNGs — blocked by file size, not choice; needs Nicole to resize.
- `Resume.pdf` — binary duplicate of `Resume.md`, already read as text.

## Current Open Items (updated 2026-10-01, replaces the earlier stale "Open Threads" list)

Most of what this file previously tracked as open is resolved: the full filesystem inventory is complete, all 7 research documents and the full 13-principle Manifesto are read, the spine is locked and fully implemented, and all 10 body-text sections are written. What's genuinely still open, as of this update:

- **`vs_code_screenshot.png`'s identity is unconfirmed** — unclear if this is the already-discussed `notes.md` screenshot (assigned to Design Process) or a new image for Technical Build's still-open second paragraph. See `02_Selected_Assets/CURATION-INDEX.md` for full detail.
- **Production, "The Technical Build," paragraph 3 (the Figma/Framer pipeline) has no image assigned yet.**
- **Deep/Technical Cards 1, 2, and 4 remain text-only** — only Card 3 (the Decision Log screenshot) has a confirmed image.
- **Outcome and Retrospective remain deliberately text-only**, confirmed, not pending.
- **The hero and Homepage project card are both built and locked.** The hero shows the live Homepage mid-construction (laptop, camera, Figma icon, and glasses all carrying a unified selection-handle-and-trail "being placed" treatment); Claude is deliberately not represented as its own element in the final version, a real choice Nicole made after reviewing three concept directions. Full detail in `02_Selected_Assets/CURATION-INDEX.md`.
- **The Homepage card caption and the ordering of all three project cards (Meta, then Portfolio Build, then Feminist UX) are locked**, a portfolio-wide decision documented in the shared Decision Log, not scoped to this project alone.
