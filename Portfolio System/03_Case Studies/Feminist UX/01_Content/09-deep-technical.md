# Deep/Technical (Layer 3 — Optional)

> **Purpose:** Highest density, fully optional. "A visitor who doesn't scroll this far shouldn't feel they missed something essential — this layer exists for the reviewer actively looking for it" (Experience Blueprint §2.5). Untracked in the progress nav, positioned after Retrospective as closing/optional content.
> **Format, confirmed 2026-08-XX (matches Meta's pattern):** collapsible cards, title + description, same click-to-expand pattern as Decisions.
> **Standing rule:** never label content "optional" in a way that could read as "skippable" to every reader, including a Hiring Manager.

## Guiding Questions
1. Is there genuinely technical detail here worth including (feministux.org's front-end architecture, the interactive toolkit/questionnaire logic, accessibility implementation)?
2. Were there edge cases you handled that a technical reviewer would appreciate seeing?
3. Did AI-assisted workflow play a role in building the site? If so, what, concretely?
4. Is there anything here that would only matter to an Engineer or Director reviewer, not a Recruiter or Hiring Manager?

## Your Answers
Locked 2026-08-XX. Four cards, ordered as a logical build-up (framework foundation → scoring mechanism → the prompt that uses it → the build that runs it all), deliberately closing on the broadest card rather than ending narrowly on the toolkit.

**Intro blurb:**
"A closer look at the real technical work behind the site, for anyone who wants to see how it actually functions."

**Card 1 — Mapping Five Tenets to Real Practice**
"The five tenets are abstract on their own. Turning them into a toolkit that actually works meant breaking each one down into specific, checkable criteria, then mapping those criteria across seven different phases of the design process, since what 'inclusive' looks like in a wireframe is different from what it looks like in finished microcopy. That mapping is what lets the toolkit ask something genuinely relevant no matter what stage of work someone brings to it."

**Card 2 — The Scoring Engine Underneath**
"The toolkit's feedback isn't AI improvising encouragement. Every answer a user selects maps to a specific principle from the framework. Those combine into a score using a defined aggregation formula, and that score decides what the AI actually writes back, all before a single word of feedback gets generated. None of this math is ever shown to the user. It exists purely to make sure the response is grounded in something real."

**Card 3 — The Prompt That Turns Scores Into Feedback**
"The toolkit's feedback comes from an AI prompt that turns scores into real, specific language. This prompt went through six real versions before landing, and every version enforces strict rules: no scores or numbers ever mentioned to the user, every response grounded in the five tenets, hard word limits per section, and specific delimiter syntax the site's code parses to lay the response out correctly. This isn't a mockup of an AI feature. It's a live prompt, running in production, generating a real response every time someone uses the tool."

**Card 4 — From Figma to Custom Code**
"Every part of the site started in Figma, then got built out in Framer. Framer's built-in tools stopped well short of what the toolkit needed, though. Custom TypeScript components handle the scoring logic and the live connection to the AI, work that had to be built from scratch alongside the design itself, not bolted on after."

## Revision History

- **The intro blurb was caught mid-draft as unintentionally over-promising**: an early version ("A closer look at how the toolkit actually thinks, and what it took to build it") explicitly framed the whole section around the toolkit, when Nicole wanted the section to stay general even though the cards themselves happen to lean toolkit-heavy. Rewritten to describe the site broadly.
- **A real question was raised and resolved about whether to diversify away from the toolkit entirely** (a candidate 5th card on the Experience simulation's embedded code component was proposed) — ultimately not added, since the four toolkit-adjacent cards were each individually strong on their own technical merits, and Nicole didn't feel a specific need to force in different subject matter just for variety.
- **Card 2 required an added context sentence** ("The toolkit's feedback isn't AI improvising encouragement") after Nicole flagged that the original opened directly into scoring mechanics without ever establishing what system was actually being described.
- **Card 4's original title, "The Actual Build," was flagged as too abstract** and replaced with the more specific "From Figma to Custom Code" — which then required the body text itself to actually reference Figma, since the title named it but the original body didn't.
- **Card 3 went through the most iteration of the four**: title evolved through several options before landing on "The Prompt That Turns Scores Into Feedback," chosen because it echoes the body text's own phrasing rather than introducing new wording. The body's original example rule ("no markdown formatting") was swapped for "every response grounded in the five tenets" after Nicole pointed out that markdown formatting was a build-utility concern, not something relevant to feedback quality, and the section should stick to rules that actually matter for what the user experiences.
- **Card 4's two-sentence structure went through three real grammar fixes**: an early version combined two sentences into one overly long sentence; a fix using "though" as a mid-sentence connector was flagged as still too long; the final version splits cleanly into two full, grammatically complete sentences.

## Assets That Support This Section
No images — matches Meta's pattern for this section, collapsible cards don't need visual support.
