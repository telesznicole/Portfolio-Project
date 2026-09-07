# Decisions

> **Purpose:** The key calls made, and — critically — what was considered and rejected. This is the section that reads longer than others because it accumulates 2-4 short items, each with a chosen path and a rejected alternative (this is what the expandable card pattern in the template is built for).
> **Credibility framing (per Portfolio Strategy research):** articulating *why* a method was used or skipped is a senior-level signal — don't just list what you did, explain the reasoning against the alternative.
> **Format note (established 2026-08-XX):** each decision uses a strict two-part claim + reason structure, matching Meta's actual `04-decisions.md` exactly — a "claim" line (what was decided) and a separate "reason" line (the real alternative, and why it lost). Not flowing paragraphs.
> **Section-level framing, confirmed directly by Nicole:** by the end of Decisions, a reader should have a complete conceptual picture of what the product is, why it has the shape it has, and why each major choice was made — even without yet knowing the literal mechanics of building it. Production then gets to assume that picture is already in place and focus purely on execution.

## Guiding Questions
For each major decision (aim for 2-4):
1. What was the decision point / fork in the road? (e.g., framework structure, the learn/experience/engage model, what to build vs. what to leave academic)
2. What did you choose, and why?
3. What was the real alternative you considered and rejected — and why did it lose?
4. Whose input shaped this decision (advisors, practitioners you consulted, just you)?

## Your Answers
Finalized 2026-08-XX. Five decisions, each claim + reason. Went through multiple full revision passes — see history below.

**Opener:**
"With the constraints in place, the actual design work started: turning a research gap into something with real shape. A handful of decisions ended up defining what that shape became."

**1. Why three parts, not one**
Claim: "The artifact became three connected parts, not one: educational content, an experiential simulation, and a practical toolkit."
Reason: "The gap wasn't just missing tools. It was missing awareness, empathy, and action all at once. A single piece, no matter how good, couldn't build all three. Splitting it into three connected parts let each one do the job the others couldn't."

**2. Why I built five tenets, not zero**
Claim: "I distilled everything into five core, actionable tenets: design is not neutral, center lived and diverse experiences, design with people rather than just for them, prioritize care and equity over pure efficiency, and question your own assumptions."
Reason: "None of that existed when I started. Feminist UX itself is what I defined it as: a reflective, inclusive approach to design that accounts for power, context, and user diversity. Each tenet pulls from multiple feminist and design frameworks at once, built specifically to be something a designer could actually act on, not just read about."

**3. Why the toolkit never became a Figma plugin**
Claim: "An early plan treated the toolkit as a Figma plugin. I never built it that way. Instead, it's built directly into the microsite, live on the site itself."
Reason: "That plan had a real problem baked in. It would only work inside one piece of software, for people who already used it, at one stage of their process. Building it into the microsite instead meant it worked for anyone, at any point, regardless of what software they had open."

**4. Why the AI feedback never shows a number**
Claim: "The toolkit runs on AI-generated feedback, guided by an internal grading scheme, but no score, number, or grade is ever shown to the person using it."
Reason: "That scoring structure decides which kind of feedback to generate, but the wording never states it. What did come directly from testing was the format itself: a co-creation session with practicing designers pushed back on an earlier version that read as a wall of text, asking for real 'how,' not just 'what.' That's why the final version organizes around what's already working, where to go deeper, and concrete next steps."

**5. Why I tested early, and kept testing**
Claim: "Testing ran throughout the entire build, not once or twice. An early prototype round came first, then a dedicated round revising the toolkit's actual questions, then a co-creation session with practicing designers."
Reason: "I could have waited for a finished product before getting outside reactions. Instead, each stage got tested as it was built, and each round fed directly into the next version. That's the only way to catch what's not working while there's still time to actually fix it."

**Closing line:**
"None of these decisions happened in isolation. Each one built directly on what the last one revealed, and by the time they were all locked, the shape of the final artifact was already set. What was left was building it."

## Revision History — this section went through the most extensive iteration of any section so far

- **Decision 2 contained a real, substantive factual error, caught directly by Nicole.** Early drafts described the theoretical framework's growth ("2 pillars to 5") using the word "pillar" — a term that does not appear anywhere in the thesis at all, confirmed by direct text search. Nicole's actual structure is the **five core tenets**, which started at zero (not two) and each pull from *multiple* source frameworks at once, not one-to-one. Verbatim source confirming this: "Each of these tenets is informed by the outlined feminist and design frameworks, including Feminist HCI, gender-conscious design, Design Justice, technofeminism, cyberfeminism, and post-third wave feminism." Decision 2 was rewritten entirely around the tenets, correctly framed as 0 → 5, and doubles as the home for Nicole's requested quick definition of Feminist UX (pulled directly from the thesis's own Theoretical Framework section).
- **Decision 2's reason went through a further revision** to end on actionability ("built specifically to be something a designer could actually act on") rather than academic/research framing, per Nicole's direct note that these are design decisions, not academic reasoning.
- **Decision 3 contained a second real factual error**, separate from the tenets issue. An earlier version stated Nicole "moved the toolkit out of Figma," implying it was ever built there. It never was — only postulated as a plan. Corrected to state plainly that it was never built as a plugin, and now explicitly mentions it's live on the site itself.
- **Decision 4 contained a third real factual error, also caught directly by Nicole.** An early draft implied users were once shown numeric scores and that this was changed after user pushback. Nicole corrected this directly: scoring was always purely internal, used only to route which tier of feedback to generate, and was never shown to users at any point. The claim now explicitly names AI (an earlier version didn't, leaving readers with no indication AI was involved at all), and the reason keeps only what's actually testing-grounded: the co-creation session's real pushback on the output *format*, not an invented pushback on scoring itself.
- **Decision 4's reason was cut significantly for length** after Nicole flagged it as "insanely long" despite good content — trimmed to keep only the two load-bearing points (scoring stays internal by design; the co-creation session drove the format change) rather than restating both at length.
- **Decision 5 was revised to reflect the true multi-round testing pattern**, re-verified directly against the thesis's Sprint 3 section after Nicole flagged that a two-round version undersold how much testing actually happened. Confirmed: an early prototype round, a dedicated Sprint 3 toolkit-revision survey (9 participants), a Sprint 4 co-creation session, and the separate final validation study (reserved for Outcome, not referenced here). Decision 5 now names three distinct rounds rather than implying just one or two.
- **A colon in Decision 5's claim was removed** for readability at Nicole's request.
- **The closing line was elaborated** after an initial version read as "a bit short and flat" — expanded to explicitly connect the decisions to each other and to what comes next, without over-explaining Production's content.
- **No em dashes anywhere in this section**, per Nicole's explicit request during this section's drafting — apply this as standing style guidance for all sections going forward, not just this one.

## Assets That Support This Section
Locked 2026-08-XX, real assets selected, not just placement rules. Three images total, going card by card:

- **`decisions_01_miro-screenshot.png`** (opener, above the cards) — a real screenshot of Nicole's own "Thesis Ideation" research tracker in Miro. Caption: "Every source got logged and rated before it shaped anything. This is where the decisions below actually started."
- **`decisions_02_microsite-sitemap.png`** (Card 1, three parts not one) — the final sitemap, Learn/Experience/Engage/About. Caption: "Learn, Experience, Engage: mapped out before they were built."
- **Card 2** (five tenets) — deliberately no image. The tenets are already fully listed in the card's own text; a text-only visual would be redundant. A tenet-to-source-framework mapping visual was considered but no such asset currently exists.
- **Card 3** (never a Figma plugin) — deliberately no image. The one existing flow diagram (`toolkit_interaction_flow.png`) was tried and rejected as illegible at card size; a cropped slice read as an accidental mistake, not an intentional partial view. Omitted rather than force something that looks like an error.
- **`decisions_04_toolkit-testing.png`** (Card 5, tested early and kept testing) — a real screenshot from an actual final validation session: the live toolkit question on screen, question 6 of 7, the participant fully blurred and unidentifiable, name blacked out. Caption: "Real reactions, caught mid-session."

Full record, including privacy/sourcing notes, lives in `02_Selected_Assets/CURATION-INDEX.md`.
