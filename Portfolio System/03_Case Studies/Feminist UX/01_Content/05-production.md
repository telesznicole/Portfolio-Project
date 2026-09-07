# Production

> **Purpose (locked 2026-08-23 — renamed from "Trade-offs"):** What it actually took to turn the concept into something real and presentable — the production reality, not a cost/sacrifice framing. This section shows the breadth of what got built: prototypes, documentation, video, live demos, whatever form the real deliverables took for this specific project. It exists because "cost of a decision" (the original Trade-offs framing) tended to circle the same ground Constraints and Decisions already cover — this section instead answers "what did it take to make this real," which is a genuinely different question.
> **Format, established 2026-08-XX for this project specifically (diverges from Meta's tight 3-card shape):** Meta's Production was necessarily short because it was NDA-redacted almost entirely — it could only gesture at deliverable types, never describe real content. Feminist UX has no such restriction and genuinely dense material across three separate builds, so this section instead uses **one dedicated subsection per microsite page** (Learn, Experience, Engage), each with real narrative room, preceded by a shared Intro. This is the section expected to run longest and richest in the whole case study, matching how much real, undredacted material exists.
> **Standing rule for every subsection, established while drafting Learn:** the first sentence of each subsection must state plainly what that page *is* before doing anything else (build challenges, process, etc.) — a reader should never have to guess what's being discussed.
> **Hard rule:** do not imply alternative concepts/directions were sacrificed or abandoned here — if the project converged on one direction earlier (per Decisions), everything in this section is in service of that one thing, not a competing option that lost out.

## Guiding Questions
1. What did it actually take, in production terms, to bring the concept to life? (prototype, documentation, video, live demo, built artifact, etc. — for Feminist UX, likely the actual site build, the framework/toolkit itself)
2. Was there a distinctive format or moment worth naming?
3. What's the honest range/breadth of deliverables — enough to show real production effort without overstating it?

## Your Answers

### Intro
Locked 2026-08-XX. Two paragraphs: the first orients a skimming reader to what the three subsections actually are; the second establishes real technical execution (Figma → Framer, plus custom TypeScript where Framer's built-in tools weren't enough) so this case study doesn't skip technical depth the way earlier drafts risked doing.

"The final product is a live microsite with three connected parts: Learn, Experience, and Engage. Each one took its own real process to build, and each one solves a different piece of the same problem.

Every part started in Figma, as low and mid-fidelity mockups, refined through multiple rounds before any of it got built. The live site itself runs on Framer, but parts of it needed real development beyond Framer's built-in tools, including custom TypeScript components for things like the scoring logic and AI integration on the Engage page."

**Revision history:**
- Original first draft of the Intro was a single short sentence — Nicole flagged it as "super short and kinda meaningless," missing the orientation a skimming reader needs to know what Learn/Experience/Engage even are by the time they reach this section.
- The technical-execution paragraph went through the most iteration of anything in this section. Early attempts either omitted technical detail entirely (which Nicole explicitly said was a mistake worth avoiding, "skimping with the technical execution is bad") or overcorrected into an overlong, jargon-heavy paragraph. Also went through a factual correction: an early version implied only the toolkit needed custom development, when other parts of the site did too — reworded to "parts of it" rather than naming the toolkit as the sole example, with the toolkit's scoring/AI work kept as a named instance rather than the only instance.
- Where to place the Figma-to-Framer technical detail was discussed directly rather than assumed: real options considered were the Intro, inside Experience, or reserving it entirely for Deep/Technical. Landed on a light-but-real mention here, with full depth still reserved for Deep/Technical later.

### Learn
Locked 2026-08-XX.

"Learn is the site's educational core. It had to carry the actual theoretical weight of the thesis without reading like one. The theory behind the five tenets spans multiple feminist and design frameworks. Turning all of that into something genuinely usable by a working designer, not just academically accurate, was the real task.

The page went through real content planning before a word was final: a full outline, sourced and revised, tracking every citation back to where it actually came from. I also brought in a subject matter expert in feminist theory to validate the content directly, not just my own research read on it. Real voices carry some of that weight too, including a line from bell hooks: 'The most radical tool we have is to imagine otherwise.'

The theory also needed a practical hook for anyone reading with a business lens, not just a design one. Learn ties Feminist UX directly into the Nielsen Norman Group's UX Maturity Model, mapping the tenets onto Strategy, Culture, Process, and Outcomes, since that's language most UX teams already use."

**Revision history:**
- Original framing ("had to make sure people actually read it, not skim past it") was cut at Nicole's request — kept the underlying point (make dense theory genuinely usable) but reframed away from a skim/skip framing she didn't like.
- The SME (subject matter expert) collaboration was missing from early drafts entirely. Nicole flagged this directly as something a recruiter would find genuinely relevant, and it's now named explicitly.
- The Laurie Penny quote was considered alongside the bell hooks quote but dropped — it runs over the 15-word direct-quotation limit as written, and paraphrasing it read as weaker than just keeping one strong, properly-short quote (bell hooks) rather than two.
- First sentence rule applied last: added "Learn is the site's educational core" as a standalone lead sentence, keeping the pre-existing, Nicole-approved second line ("It had to carry the actual theoretical weight of the thesis without reading like one") fully intact rather than rewriting it to force the orientation into the same sentence.

### Experience
Locked 2026-08-XX.

"Experience is a simulation. It puts you through two versions of the same everyday onboarding task, one built on anti-Feminist UX patterns and one built on Feminist UX principles, so the difference registers as a felt reaction, not just a read one.

The flow moves through five stages: a landing screen, the anti-pattern onboarding, a midpoint reflection, the inclusive version of that same onboarding, and a closing screen. Same task, told two different ways. Building it as one continuous experience, rather than a series of static pages, meant the whole thing needed to be its own embedded code component.

Some of the anti-Feminist UX flow's most exaggerated moments, like sprawling terms and conditions with no real option to decline, or prompts that pushed you to rush through decisions, were built that way on purpose, not accidents. The goal was making the pattern impossible to miss, not subtle. Real testing reactions confirmed it landed: one participant said it felt like the flow 'wanted you to fail at every turn.'"

**Revision history:**
- An early draft opened by framing Experience as the literal origin point of the whole project (before Learn or the toolkit existed). Nicole cut this directly: interesting as a fact, but it belongs to Context/Decisions territory, and including it here caused real narrative whiplash inside a section specifically about production, not origin story. Also, the very first opening attempt was too abstract ("Experience is the simulation...") without grounding what a reader is actually looking at, rewritten to state plainly, in the first sentence, what the simulation actually does.
- Naming went through a real, substantive correction: early drafts described the two flows as generically "exclusionary" and "inclusive." Nicole pushed back directly that this flattened the actual framework being demonstrated, and that this wasn't her being overly attached to academic language, since "exclusionary vs. inclusive" is generic enough to describe any bad-UX-vs-good-UX comparison, while "anti-Feminist UX" and "Feminist UX" are specific to what was actually built, and "Feminist UX" is a callback to the site's own name, not new jargon. Restored, with the full terms established once in paragraph 1 and shortened to "anti-pattern"/"inclusive" in later paragraphs to avoid repetition.
- The code-component technical detail went through several placement attempts before landing as its own full sentence, closing paragraph 2, earlier attempts tacked it onto the end of an existing sentence about flow structure, which read as a disconnected technical aside rather than a natural continuation.
- **The two exaggerated-pattern examples were swapped for ones with real, direct testing grounding.** Early drafts used a forced legal-name field, which wasn't as strongly sourced. Replaced with sprawling, undeclinable terms and conditions and prompts pressuring rushed decisions, both grounded directly in Paige's actual testing session.
- **The closing quote went through two real revisions.** First attempt ("downloading malware with a bow on it," Amelia) was swapped for Thompson's "I have no rights to my own soul anymore" once the exaggerated-moment examples changed to the terms/pressure framing, since that quote paired better thematically. Nicole then flagged even that pairing as mismatched. Final quote, also Amelia, from the same original testing session: "it wanted you to fail at every turn", ties directly to the rushed-decision-pressure framing in the sentence immediately before it.

### Engage
Locked 2026-08-XX.

"Engage is the toolkit: a reflective tool designers can run their own work through, covering seven real phases of a design process, from early user flows and wireframes all the way to microcopy and finished UI components.

Underneath, it runs on an internal grading scheme. Each answer choice reflects adherence, or lack of it, to specific principles from the framework, combining into scores that shape the actual feedback the AI writes back, but none of that scoring ever reaches the person using it. What they see is written in plain language, describing patterns and next steps, never numbers.

That output went through real iteration, not one version. Early feedback categories were clinical: strengths, areas for reflection, general guidance. A co-creation session with practicing designers pushed back on that framing and on the format itself, wanting less of a text dump and something more actionable. The final version reorganizes around what's already working, where to go deeper, and concrete next steps, tied directly to the five tenets as the lens for every response.

The toolkit also produces something tangible: a downloadable set of cards summarizing the five tenets, meant to travel with a designer past the site itself, not stay locked inside it."

**Closing CTA (added 2026-08-XX, sits after Engage, ending the whole Production section):**
Tertiary text style, matching the warm/playful register already established elsewhere in this project (the NDA aside's "ask me. :)"): "Take a look at the live site before you go! :)" with a click-through link to feministux.org. Confirmed placement directly with Nicole: end of Production, after Engage, not earlier. Distinct from whatever live-site button already exists near the Executive Summary hero — different position, reaches a reader who's made it all the way through Production, not just arrived at the page.

**Revision history:**
- Paragraph 2 (the internal grading mechanics) went through the most iteration of the whole subsection. Early drafts said "every answer maps to a scoring structure that decides which tier of feedback to generate" — Nicole flagged two separate issues with this: it implied each individual answer directly determined its own outcome rather than combining into an aggregate score, and the word "tier" itself felt misaligned with the actual mechanism even though it's technically accurate internally. Also flagged that "what kind of feedback to generate" implied the AI selects from preset feedback types, when it actually generates free text shaped by the score, not chosen from options.
- "Dimension" was tried as a replacement for describing what an answer choice maps to, then rejected as reading like an abstraction to an unfamiliar reader even though it's the technically precise internal term. Replaced with "principle," which reads as more concrete while staying accurate.
- Final wording for the mapping mechanic was substantially Nicole's own construction, refined only for grammar and flow: "each answer choice reflects adherence, or lack of it, to specific principles from the framework, combining into scores that shape the actual feedback the AI writes back."
- "AI-generated" was deliberately dropped from the final sentence of paragraph 2, since "the AI writes back" already establishes that earlier in the same paragraph, avoiding redundancy.

## Assets That Support This Section
Locked 2026-08-XX. Real assets across all four subsections — Engage's is functional (a button), not an image:

- **Intro (side-by-side layout)**: `production_01_low-fi-learn-page.png` + `production_02_high-fi-learn-page.png` — the same Learn page, shown low-fidelity (lorem ipsum, wireframe placeholders) next to the final high-fidelity build (real photojournalistic imagery, card-stack layout). Caption: "The same page, months apart. Placeholder boxes and lorem ipsum became real content, real imagery, and real interactivity." Deliberately no separate "final produced result" showcase image at the end of Production — considered and rejected as redundant, since high-fidelity screens already appear throughout the section by that point.
- **Learn**: `production_03_learn-page-quote.png` — laptop mockup of the actual bell hooks quote page (a striking red halftone portrait treatment). Caption: "The kind of quote that earns a page to itself."
- **Experience (side-by-side layout)**: the actual screen 5 ("Personalize Account - Start with the basics - Profile Picture") from both real flow exports, `Process/T1_AF-FlowPics/` and `Process/T1_F-FlowPics/` — genuinely the same step from each flow, not staged. The anti-pattern version's real copy: "Women, please avoid makeup or any appearance-altering products so your photo accurately reflects how you look," paired with a disabled Continue button. The inclusive version: "Share a photo if you'd like, just something that feels like you," with a genuine Skip option and an active Continue button. Caption: "The exact same step in the account setup, told two different ways. Read the copy on each side closely, the difference isn't subtle."
- **Engage**: functional, not illustrative — a real "Download Toolkit" button (linking to the actual downloadable tenet card set) rather than a screenshot. Confirmed this is a deliberate, different treatment from the other three subsections, not a placeholder awaiting a real image. The live-site link mentioned alongside it is the same closing CTA already documented above, not a second separate link.

Full record lives in `02_Selected_Assets/CURATION-INDEX.md`.
