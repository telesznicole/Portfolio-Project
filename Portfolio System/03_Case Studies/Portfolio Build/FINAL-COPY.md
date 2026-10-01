# FINAL COPY: Portfolio Build

> **This is the copy-paste file.** Nothing here but finished text, in the order the Framer template expects. No questions, no notes, no drafts-in-progress. Those live in `01_Content/`. As each section gets finalized through our conversation, the clean version lands here.
>
> Status per section below tracks whether it's ready to use yet.
> **Note:** "Portfolio Build" is an internal working name only, used for this folder and our own documentation. The public page title is "Behind the Portfolio."

---

## Page Identity
**Status:** Complete

Title: Behind the Portfolio
Tag: AI-Assisted Design

---

## Executive Summary
**Status:** Complete — hero visual locked (laptop + camera + Figma icon + glasses, unified "being placed" treatment; Claude deliberately not represented)

Role: Product Designer & Developer
Stack: Figma, Framer, Claude + MCP, TypeScript
Duration: 6 weeks
Problem: Wanting my portfolio to show more depth and craft, and testing how AI could fit my process
Proof: AI-assisted build, 73 views on launch day

---

## Context
**Status:** Complete

My portfolio wasn't showing what I was actually capable of. So I rebuilt it, completely, from the ground up. I had a genuine question I wanted to test too: how could AI actually fit into my own process as a designer, not just speed up small tasks.

Rather than start by designing pages, I treated the whole project as a product. I built the actual structure and system behind it before any screen existed. Six weeks later, working solo, that starting choice shaped everything that follows.

---

## Discovery
**Status:** Complete

Before I designed a single page, I did real research, using Google's own AI-powered deep research tool to help. I looked at who actually reviews a portfolio, what strong designers were already doing, and where design hiring itself was heading with AI.

A recruiter looks at a portfolio for seconds. A hiring director might spend several minutes. Those aren't the same reader, so the site is built in layers: a fast summary up top, real depth underneath for anyone who wants it.

AI fluency isn't a nice-to-have in design hiring anymore. Most design leaders now treat it as essential, and the pay gap between designers who use it well and those who don't is real. This wasn't a trend to chase. It was already where the field was heading.

I also studied portfolios from designers I actually respect. The pattern was clear: confident typography, real restraint, no unnecessary decoration. It confirmed a direction I was already leaning toward.

None of this was guesswork. Every choice that followed had something underneath it.

---

## Constraints
**Status:** Complete

AI can produce endless options, fast. What it can't do is know what it actually feels like to be the person on the other side of the work. It doesn't know what's actually good in a given context, or why one version of something matters more than another.

That's the thing no prompt can replace. So I stayed hands-on with every real call, not just reviewing what came back. That real, human connection to the person reading is what drove everything here.

AI optimizes for what's logically correct, not what actually reads well emotionally. It can organize a portfolio soundly without understanding that a reader needs to trust the person behind it before they're ready to be impressed by the work. That distinction isn't something AI has built in. I had to bring it.

AI treats thoroughness as a virtue on its own, including every relevant detail rather than cutting for what a reader will actually get through. But completeness and readability aren't the same goal, and only one matters to someone giving a page ten seconds. Knowing which to prioritize isn't something AI decides. I had to.

AI assumes a reader already knows what it knows. Left unchecked, it writes as if the reader were part of the conversation that produced the content, skipping context a stranger would need. Catching that gap isn't something AI does on its own.

Design still needs a designer, especially when it's your own story someone's trying to connect with. My next real decisions were about keeping my judgment in control.

---

## Decisions
**Status:** Complete

Keeping my judgment in control started with the very first real decision, before I designed anything at all.

Decision 1 (system before pages):
Claim: I built the actual structure behind this project, a real set of documentation and rules, before I designed a single screen.
Reason: Jumping straight into pages tends to produce something inconsistent, since each screen gets solved on its own. Building the system first meant every later decision had something real to check against, instead of getting reinvented page by page.

Decision 2 (a real division of labor):
Claim: I set clear terms for what I would decide and what AI would help with, before any real work started.
Reason: AI handled synthesis, drafting, and coding, the heavy lifting. Vision, taste, and every final call stayed mine. Without drawing that line early, it gets blurry fast, and the work starts drifting toward whatever the tool defaults to.

Decision 3 (a real critique loop, not first-pass acceptance):
Claim: Nothing I used was a first draft. I gave direction, AI proposed something, I critiqued it, and it got revised, sometimes several times, before anything was considered done.
Reason: A first draft reflects what a prompt produced. A tenth revision reflects what I actually wanted. That gap is where the real work happens, and skipping it means shipping the tool's first guess instead of my own decision.

Closing line:
That structure held for the rest of the project. It's why the rest of this actually worked.

---

## Production
**Status:** Complete

Before any of this could work, Claude needed real access to my actual project: my rules, my research, my structure, not just whatever I typed into a chat box.

That access is where everything else here started: a real technical pipeline, then visible iteration across four pages, each rebuilt multiple times before anything was considered finished.

The Technical Build:
I connected Claude directly to my own project files through a filesystem connection, scoped narrowly to just this project, so it could reference my real rules, research, and documentation directly.

Wireframes themselves started as real, working HTML and CSS, not static images, a low-fidelity stage built for testing structure and behavior, not visuals. That choice was deliberate: code can be tested for actual behavior, tracked cleanly in version control, and matches how AI drafts and edits best.

Getting that into the live site meant a real pipeline: Claude Code and Figma's own remote MCP server brought the coded wireframes into Figma as editable frames for mid-fidelity refinement, then a second tool brought that refined work into Framer itself, where I made real, hands-on adjustments before anything went live. Both tools were chosen because they ran on infrastructure I already had.

The Design Process:
Every page went through many full rounds of real iteration, not quick touch-ups. The homepage alone went through 9. The case study template went through 7. Resume went through 3. How I Work went through 7, and one of those rounds wasn't a small revision, it was a real reset.

Every round, on every page, came with its own written reasoning. Each one documented what it tested, what worked, and why, so real decisions could get made quickly instead of every choice becoming a matter of opinion.

Closing CTA (tertiary text, ends Production):
Want a peek behind the scenes? Here's the GitHub repo. :)

---

## Outcome
**Status:** Complete

The real test wasn't whether the site looked better. It was whether any of this actually worked, as a way of working, not just a way of looking.

The clearest proof isn't a number. It's what you're reading right now: a real, complete case study, built by the exact process it describes. That's not a claim about potential. It's the actual result of it.

Attention picked up too. Traffic has stayed meaningfully higher since the relaunch than it was before. Not the point, but I'm not complaining.

Both halves of the original question got answered. AI turned out to fit my process in a real, repeatable way, and the depth I set out to show is actually there for anyone who looks.

*(Metric callout: none — traffic referenced honestly in prose, not pulled into a stat banner)*

---

## Retrospective
**Status:** Complete

Before this, I'd incessantly tinker with my portfolio without ever finishing it. Every pass chased a different look, never anything with real substance behind it. It took an enormous amount of time, and I still didn't feel proud of what I had.

Having an actual system changed that. For the first time, I had a real way to build my work in depth and actually show off the things I'm genuinely proud of.

The system itself was entirely new for me. I'd vibe-coded before, but never worked AI into something this deep. I wasn't sure it would hold up, and it did. It was approachable, malleable, and, when used well, it doesn't take over the work, it clears space for the parts I'm best at.

---

## Tools & Skills
**Status:** Complete

Product Design · UX Research · Systems Thinking · Figma · Framer · Front-End Development · Prompt Engineering · AI-Assisted Design

---

## Deep/Technical
**Status:** Complete — 4 collapsible cards + intro blurb

Intro:
A closer look at the real system behind this project, for anyone who wants to see how it actually works.

Card 1 (Research-First Architecture):
Before any structure existed, I researched how this kind of system should actually work, not just built one by instinct. That's why the knowledge base is plain, portable files, Markdown, Git, structured folders, instead of something locked to one AI tool. GitHub and secure access were set up before Claude ever touched the project, and the filesystem connection itself was scoped narrowly to just this project, on purpose, not given broad access by default.

Card 2 (The Actual Workflow):
The real workflow was direction in, a draft out, a critique, a revision, repeated until something actually held up. That loop wasn't occasional. It ran on nearly every real decision across this entire project, including the ones you're reading right now, some needing one pass, others needing a dozen, before it finally matched what I thought was best.

Card 3 (The Decision Log Itself):
Every real call across this whole portfolio, every project, every section, lives in one running document: what was decided, what was rejected, and why. It's thousands of lines long at this point and still growing. That record is what actually made a system like this possible. Nothing depended on memory, mine or the AI's, for what had already been settled.

Card 4 (A Named Framework):
My actual workflow, direction, draft, critique, revision, turns out to map closely onto something already named in the industry: the Sandwich Method, human context first, AI acceleration in the middle, human curation at the end. I didn't build toward that framework on purpose. Finding out afterward that it already existed was real confirmation the process wasn't just idiosyncratic, it was sound.
