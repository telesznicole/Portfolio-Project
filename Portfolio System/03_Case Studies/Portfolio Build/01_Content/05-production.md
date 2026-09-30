# Production

> **Purpose:** What it actually took to turn the concept into something real. Two subsections, matching the confirmed split with Decisions: this section carries the real craft/technical evidence, not the abstract rules (those live in Decisions).
> **Standing rule (established 2026-09-29):** ground a reader in plain terms before going specific.
> **Format (established 2026-09-30):** Intro + two subsections, each with bolded anchor phrases that must carry real, standalone meaning if a reader skims only the bolds.

## Guiding Questions
1. What did it actually take, in production terms, to bring the redesign to life (Figma work, Framer build, custom code)?
2. What did it take to build the documentation/AI-collaboration system itself?
3. Was there a distinctive format or moment worth naming?
4. What's the honest range/breadth of what got built?

## Your Answers
Locked 2026-09-30. Intro + "The Technical Build" + "The Design Process."

"Before any of this could work, Claude needed real access to my actual project: my rules, my research, my structure, not just whatever I typed into a chat box.

That access is where everything else here started: a real technical pipeline, then visible iteration across four pages, each rebuilt multiple times before anything was considered finished."

**The Technical Build:**
"I connected Claude directly to my own project files through a filesystem connection, scoped narrowly to just this project, so it could reference my real rules, research, and documentation directly.

Wireframes themselves started as real, working HTML and CSS, not static images, a low-fidelity stage built for testing structure and behavior, not visuals. That choice was deliberate: code can be tested for actual behavior, tracked cleanly in version control, and matches how AI drafts and edits best.

Getting that into the live site meant a real pipeline: Claude Code and Figma's own remote MCP server brought the coded wireframes into Figma as editable frames for mid-fidelity refinement, then a second tool brought that refined work into Framer itself, where I made real, hands-on adjustments before anything went live. Both tools were chosen because they ran on infrastructure I already had."

**The Design Process:**
"Every page went through many full rounds of real iteration, not quick touch-ups. The homepage alone went through 9. The case study template went through 7. Resume went through 3. How I Work went through 7, and one of those rounds wasn't a small revision, it was a real reset.

Every round, on every page, came with its own written reasoning. Each one documented what it tested, what worked, and why, so real decisions could get made quickly instead of every choice becoming a matter of opinion."

**Closing CTA (added 2026-09-30, sits after The Design Process, ending the whole Production section):**
"Want a peek behind the scenes? Here's the GitHub repo. :)" — links to the project's GitHub repo. Retrofitted directly from Feminist UX's own closing CTA ("Take a look at the live site before you go! :)"), adapted since this project's real proof-of-work is the repo itself, not a separate live site.

**Bold placement (final, locked):**
- Technical Build: "I connected Claude directly to my own project files" / "real, working HTML and CSS, not static images" / "Claude Code and Figma's own remote MCP server"
- Design Process: "Every page went through many full rounds of real iteration, not quick touch-ups." / "Each one documented what it tested, what worked, and why"

## Revision History

This section went through substantial, real revision across several distinct issues:

- **A real, significant omission was caught and fixed**: the first full draft entirely dropped the filesystem MCP connection (Claude's direct access to Nicole's rules, research, and structure), covering only the later Figma/Framer pipeline. Nicole flagged this directly as important and central to the story. Added as its own opening beat in The Technical Build, ahead of the pipeline detail.
- **A specific technical claim (the failed Figma plugin install) was questioned directly by Nicole**, who said she had no memory of it. Verified against the actual sourced Decision Log entry before responding rather than backing down or insisting blindly: the detail is real and accurately sourced (a documented install command failed, a manual registration command worked). Later cut from the section entirely at Nicole's request, since it read as a random aside that broke the narrative flow, not because it was inaccurate.
- **"Diffed" was cut** as jargon Nicole wouldn't actually use, replaced with "tracked cleanly in version control."
- **An early homepage anecdote (the "three concepts that were actually one" story) was cut deliberately, not just for length.** Real reasoning: that exact kind of evidence (a moment of visible design judgment) already exists in Constraints, so repeating it here would be redundant rather than additive. Production's real job here is showing scale and documentation discipline, which the numbers and the "every round had written reasoning" line already do.
- **A real, apparent factual conflict surfaced and was resolved carefully, not assumed**: Nicole initially described the technical pipeline in the reverse order from what was documented (HTML into Framer first, then Figma to refine, rather than HTML to Figma to Framer). Investigated directly rather than silently defaulting to either the log or Nicole's memory. Resolved as a terminology confusion, not an actual factual error: Framer's tool is called "HTML to Framer," which reads as if it moves raw HTML directly into Framer, when it actually moves *Figma* work into Framer. The original documented pipeline order was correct all along; the tool's confusing name was the source of the apparent conflict. A parenthetical explaining this was tried and rejected by Nicole as clunky; resolved by simply not naming the tool at all ("a second tool") rather than explaining its confusing name.
- **A real detail about Framer itself was added back in**: an intermediate draft implied the site was built primarily in HTML/CSS with Figma/Framer as a pass-through, when real, hands-on refinement happened directly in Framer too. Fixed in the pipeline paragraph's final clause.
- **Low-fi/mid-fi terminology was deliberately added**, at Nicole's direct request — confirmed as a case where UX jargon helps rather than creates a barrier, since the actual audience (design hiring managers, recruiters) already knows this vocabulary, unlike more technical terms like MCP.
- **Length and density were flagged twice, addressed differently each time**: first by splitting the Intro into two short paragraphs; second by adding bolded anchor phrases throughout (matching the pattern already used in Discovery and Constraints) rather than cutting real content, since the actual word count was already shorter than Feminist UX's own Production section.
- **Bold phrases in Wireframing/Design Process were reworked once for a real skimmability failure**: the first attempt bolded "the homepage went through 9 full rounds," a detail too specific to mean anything standalone, and the closing paragraph's bold carried no real weight on its own. Both rewritten to be complete, self-contained claims a skimming reader could get value from in isolation.
- **The subsection title "Wireframing" was replaced** with "The Design Process," at Nicole's request, to match the parallel noun-phrase structure of "The Technical Build" (what got built technically / how the design side actually happened).
- **A closing CTA was added (2026-09-30), retrofitted directly from Feminist UX's own Production-ending pattern.** Went through one real revision: Nicole wanted a combination of "repo" and "behind the scenes" rather than a literal copy of Feminist UX's "live site" wording, since this project's real proof-of-work is the repo itself. Landed on "Want a peek behind the scenes? Here's the GitHub repo. :)"

## Assets That Support This Section
Not yet discussed — Nicole is deferring all media until the written content is complete.
