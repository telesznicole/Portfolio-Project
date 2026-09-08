# FINAL COPY — Feminist UX

> **This is the copy-paste file.** Nothing here but finished text, in the order the Framer template expects. No questions, no notes, no drafts-in-progress — those live in `01_Content/`. As each section gets finalized through our conversation, the clean version lands here.
>
> Status per section below tracks whether it's ready to use yet.

---

## Executive Summary
**Status:** Complete — hero visual locked (3 responsive sizes: `feminist_ux_hero_desktop/tablet/phone.png`)

Role: UX Researcher, Designer & Developer
Team: Independent thesis project, SCAD MFA
Duration: 14+ months
Problem: No practical framework existed for inclusive UX design
Proof: 10 UX practitioners tested it: confidence rose across every measure

---

## Context
**Status:** Text ready

In March 2025, I started an MFA thesis at SCAD around a problem I kept running into as a working UX designer: design that prioritized efficiency over the people it was supposed to serve. Feminist theory offered a way to name that gap and push back on it. But when I looked for how to actually apply it, I found almost nothing. Feminist theory existed. Adjacent research existed. "Feminist UX" itself, as a defined, usable framework, did not, and neither did any tools built to practice it. Over the next 14+ months, working solo under my committee's guidance, I set out to define it and build something UX practitioners could actually use.

---

## Discovery
**Status:** Text ready — structured as opener + bridge + 3 finding cards + closing reframe; bold-phrase candidates flagged for skimmability, actual styling applied at build stage

Opener:
I started by searching for what already existed under the name "Feminist UX." The literature search turned up almost nothing: only nine results, across every academic database I checked.

Bridge:
Only two things came close, and neither was built to do what I actually needed.

Finding 1 (User Inyerface):
User Inyerface teaches you that bad UX feels bad. It doesn't teach you who it feels worst for.

Finding 2 (Feminist UX of AI):
Feminist UX of AI proves feminist theory can shape real design thinking. It just proves it in one narrow room, limited to AI concepts and speculative wireframes, with no door out into the rest of UX practice.

Finding 3 (Feminist HCI, the field):
A similar conversation was already happening, one field over, in Feminist HCI. It just never left the academic room it started in.

Closing reframe:
This wasn't a knowledge gap. It was a translation gap. Everything needed to build Feminist UX already existed, scattered across different projects and fields. Nobody had translated it into something a working designer could actually pick up and use. So I did.

---

## Constraints
**Status:** Text ready — structured as opener + 3 constraint cards + closing line. Bold-phrase candidates apply only within the 3 constraint cards, not opener/closing.

Opener:
Knowing what needed to exist didn't make it easy to build. A few real limits shaped how the work actually came together.

Constraint 1 (solo scope):
This entire project spanned the research, the framework, the toolkit, and the site itself. All of it was built by one person, working through every phase alone, one at a time.

Constraint 2 (no existing framework to build from):
Building a UX toolkit usually means adapting something that already exists. I didn't have that option. Feminist UX itself didn't exist yet, let alone a toolkit for it. Every question, every scoring rule, every piece of the toolkit's underlying logic had to be built from scratch, with nothing comparable to check it against.

Constraint 3 (reach and persistence):
Whatever I built needed to reach every designer, not just users of one platform, and needed to keep working even if that platform changed or disappeared. It had to work for anyone, on anything, indefinitely.

Closing line:
None of these limits changed what needed to exist by the end. They just shaped how I had to get there.

---

## Decisions
**Status:** Text ready — structured as opener + 5 decision cards (each claim + reason) + closing line. No em dashes anywhere in this section (now standing style guidance for all sections).

Opener:
With the constraints in place, the actual design work started: turning a research gap into something with real shape. A handful of decisions ended up defining what that shape became.

Decision 1 (three parts, not one):
Claim: The artifact became three connected parts, not one: educational content, an experiential simulation, and a practical toolkit.
Reason: The gap wasn't just missing tools. It was missing awareness, empathy, and action all at once. A single piece, no matter how good, couldn't build all three. Splitting it into three connected parts let each one do the job the others couldn't.

Decision 2 (five tenets, not zero):
Claim: I distilled everything into five core, actionable tenets: design is not neutral, center lived and diverse experiences, design with people rather than just for them, prioritize care and equity over pure efficiency, and question your own assumptions.
Reason: None of that existed when I started. Feminist UX itself is what I defined it as: a reflective, inclusive approach to design that accounts for power, context, and user diversity. Each tenet pulls from multiple feminist and design frameworks at once, built specifically to be something a designer could actually act on, not just read about.

Decision 3 (never a Figma plugin):
Claim: An early plan treated the toolkit as a Figma plugin. I never built it that way. Instead, it's built directly into the microsite, live on the site itself.
Reason: That plan had a real problem baked in. It would only work inside one piece of software, for people who already used it, at one stage of their process. Building it into the microsite instead meant it worked for anyone, at any point, regardless of what software they had open.

Decision 4 (AI feedback never shows a number):
Claim: The toolkit runs on AI-generated feedback, guided by an internal grading scheme, but no score, number, or grade is ever shown to the person using it.
Reason: That scoring structure decides which kind of feedback to generate, but the wording never states it. What did come directly from testing was the format itself: a co-creation session with practicing designers pushed back on an earlier version that read as a wall of text, asking for real "how," not just "what." That's why the final version organizes around what's already working, where to go deeper, and concrete next steps.

Decision 5 (tested early, and kept testing):
Claim: Testing ran throughout the entire build, not once or twice. An early prototype round came first, then a dedicated round revising the toolkit's actual questions, then a co-creation session with practicing designers.
Reason: I could have waited for a finished product before getting outside reactions. Instead, each stage got tested as it was built, and each round fed directly into the next version. That's the only way to catch what's not working while there's still time to actually fix it.

Closing line:
None of these decisions happened in isolation. Each one built directly on what the last one revealed, and by the time they were all locked, the shape of the final artifact was already set. What was left was building it.

---

## Production
**Status:** Complete — Intro, Learn, Experience, and Engage all locked. This is the longest and richest section in the case study, matching how much real, undredacted material exists across all three builds.

Intro:
The final product is a live microsite with three connected parts: Learn, Experience, and Engage. Each one took its own real process to build, and each one solves a different piece of the same problem.

Every part started in Figma, as low and mid-fidelity mockups, refined through multiple rounds before any of it got built. The live site itself runs on Framer, but parts of it needed real development beyond Framer's built-in tools, including custom TypeScript components for things like the scoring logic and AI integration on the Engage page.

Learn:
Learn is the site's educational core. It had to carry the actual theoretical weight of the thesis without reading like one. The theory behind the five tenets spans multiple feminist and design frameworks. Turning all of that into something genuinely usable by a working designer, not just academically accurate, was the real task.

The page went through real content planning before a word was final: a full outline, sourced and revised, tracking every citation back to where it actually came from. I also brought in a subject matter expert in feminist theory to validate the content directly, not just my own research read on it. Real voices carry some of that weight too, including a line from bell hooks: 'The most radical tool we have is to imagine otherwise.'

The theory also needed a practical hook for anyone reading with a business lens, not just a design one. Learn ties Feminist UX directly into the Nielsen Norman Group's UX Maturity Model, mapping the tenets onto Strategy, Culture, Process, and Outcomes, since that's language most UX teams already use.

Experience:
Experience is a simulation. It puts you through two versions of the same everyday onboarding task, one built on anti-Feminist UX patterns and one built on Feminist UX principles, so the difference registers as a felt reaction, not just a read one.

The flow moves through five stages: a landing screen, the anti-pattern onboarding, a midpoint reflection, the inclusive version of that same onboarding, and a closing screen. Same task, told two different ways. Building it as one continuous experience, rather than a series of static pages, meant the whole thing needed to be its own embedded code component.

Some of the anti-Feminist UX flow's most exaggerated moments, like sprawling terms and conditions with no real option to decline, or prompts that pushed you to rush through decisions, were built that way on purpose, not accidents. The goal was making the pattern impossible to miss, not subtle. Real testing reactions confirmed it landed: one participant said it felt like the flow 'wanted you to fail at every turn.'

Engage:
Engage is the toolkit: a reflective tool designers can run their own work through, covering seven real phases of a design process, from early user flows and wireframes all the way to microcopy and finished UI components.

Underneath, it runs on an internal grading scheme. Each answer choice reflects adherence, or lack of it, to specific principles from the framework, combining into scores that shape the actual feedback the AI writes back, but none of that scoring ever reaches the person using it. What they see is written in plain language, describing patterns and next steps, never numbers.

That output went through real iteration, not one version. Early feedback categories were clinical: strengths, areas for reflection, general guidance. A co-creation session with practicing designers pushed back on that framing and on the format itself, wanting less of a text dump and something more actionable. The final version reorganizes around what's already working, where to go deeper, and concrete next steps, tied directly to the five tenets as the lens for every response.

The toolkit also produces something tangible: a downloadable set of cards summarizing the five tenets, meant to travel with a designer past the site itself, not stay locked inside it.

---

## Outcome
**Status:** Complete

Everything built across the three pages needed to actually prove itself, not just exist. A final validation study with real UX practitioners tested whether it did.

Ten practitioners tested the finished site and rated their own confidence before and after, on three things: recognizing exclusion in design, considering diverse users, and applying inclusive methods to their own work. Every measure increased.

The strongest shift was in recognizing exclusion, jumping from 74% to 88% of maximum confidence, the clearest sign the simulation actually did its job. One participant put it simply: it 'made me think deeper than I think I would have normally.' Confidence in considering diverse users and in applying inclusive methods both grew too, landing at 92% and 84%, already strong starting points that still moved further.

(Stat banner: 74% → 88% recognizing exclusion / 92% considering diverse users / 84% applying inclusive methods)

The forward-looking numbers were even stronger. Practitioners rated their anticipated positive impact from applying these approaches at 96%, and their own readiness to actually integrate inclusive patterns going forward at 92%. People didn't just understand the framework. They said they'd use it.

(Stat banner: 96% anticipated positive impact / 92% readiness to integrate)

The implications reach past the study itself. Participants' own responses point toward something bigger: a shift away from purely neutral, efficiency-first defaults and toward genuinely intentional, inclusive decision-making, one that starts with individual designers having better tools, not waiting for it to be handed down from above.

Closing line:
Ten sessions can't prove behavior change on their own. But they show something real: people walked away more confident, more aware, and genuinely ready to bring these ideas into their own work.

*(Metric callout: see the two stat banners embedded above)*

---

## Retrospective
**Status:** Complete

This project changed what I think I'm capable of as a designer. I've worked on plenty of collaborative work before, but I'd never carried something completely on my own: the research, the framework, the interaction design, the front-end build, and the validation, all under one person's judgment, for over a year.

Iterating on my own ideas that many times, especially the parts that changed the most, sharpened something specific: knowing when to hold a decision and when to actually let it go and rebuild. That's a judgment call I use on every project now, not just this one.

I came out of it a more confident designer, and genuinely excited about what I can take on next. Not because the work got easier, but because I proved to myself I could carry something this big all the way through, on my own judgment, start to finish.

---

## Tools & Skills
**Status:** Complete

Product Design · UX Research · Interaction Design · Figma · Framer · Front-End Development · Usability Testing · AI Prompt Engineering · Feminist UX

---

## Deep/Technical
**Status:** Complete — 4 collapsible cards + intro blurb, optional/untracked in progress nav per the template's own rule

Intro:
A closer look at the real technical work behind the site, for anyone who wants to see how it actually functions.

Card 1 (Mapping Five Tenets to Real Practice):
The five tenets are abstract on their own. Turning them into a toolkit that actually works meant breaking each one down into specific, checkable criteria, then mapping those criteria across seven different phases of the design process, since what "inclusive" looks like in a wireframe is different from what it looks like in finished microcopy. That mapping is what lets the toolkit ask something genuinely relevant no matter what stage of work someone brings to it.

Card 2 (The Scoring Engine Underneath):
The toolkit's feedback isn't AI improvising encouragement. Every answer a user selects maps to a specific principle from the framework. Those combine into a score using a defined aggregation formula, and that score decides what the AI actually writes back, all before a single word of feedback gets generated. None of this math is ever shown to the user. It exists purely to make sure the response is grounded in something real.

Card 3 (The Prompt That Turns Scores Into Feedback):
The toolkit's feedback comes from an AI prompt that turns scores into real, specific language. This prompt went through six real versions before landing, and every version enforces strict rules: no scores or numbers ever mentioned to the user, every response grounded in the five tenets, hard word limits per section, and specific delimiter syntax the site's code parses to lay the response out correctly. This isn't a mockup of an AI feature. It's a live prompt, running in production, generating a real response every time someone uses the tool.

Card 4 (From Figma to Custom Code):
Every part of the site started in Figma, then got built out in Framer. Framer's built-in tools stopped well short of what the toolkit needed, though. Custom TypeScript components handle the scoring logic and the live connection to the AI, work that had to be built from scratch alongside the design itself, not bolted on after.
