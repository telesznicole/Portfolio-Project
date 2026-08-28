# Resume Wireframe — v2: Refined

**Generated:** Claude (Sonnet), August 2026
**Base:** `v1-baseline` — this iteration changes exactly three things.
**Tested against:** Nicole's review of `v1-baseline`.
**Human curation applied:** None yet — pending Nicole's review.
**Shared Components used:** `.engagement-tag`, restored here to its exact Homepage/Case Study definition (see Fix 2).

---

## What This Iteration Tests

Whether splitting one overloaded component (`.engagement-tag`, which `v1-baseline` had quietly redefined) into two honest, purpose-specific components resolves the cohesion question Nicole raised, without losing the informational density the redefined version was trying to serve.

## Fix 1 — Phone number removed

Nicole: "i don't want my phone number on there just for privacy reasons." Removed from the identity block's contact links. Nothing else in the contact row changed (Email, LinkedIn, GitHub remain).

## Fix 2 — Two tag systems instead of one overloaded one

This is the substantive fix, and worth explaining the mistake plainly. `v1-baseline` reused the `.engagement-tag` *class name* for the Skills/Tools pills, but silently overrode its definition (lowercase, no letter-spacing, different color) to fit that new purpose. That meant a class named `.engagement-tag` no longer looked like an engagement tag anywhere on this page — a real cohesion bug, just an inverted version of the one already caught in the Case Study audit (that time, a real component was under-delivered; this time, a real component's *name* was borrowed but its *definition* was quietly changed).

Nicole's read was exactly right: these are two different jobs. A classification tag ("Sponsored Engagement," "Client Engagement") is an *identifier* — it answers "what kind of project was this," the same question `.engagement-tag` already answers on the Homepage's Work grid and the Case Study's title. A skill/tool pill is *information* — it answers "what do I know," not "what category is this." Different job, different component, both legitimate:

- **`.engagement-tag`** is restored to its exact original definition (`10px`, uppercase, `0.04em` letter-spacing, `#777`) and now appears fresh on each of the five Experience entries, classifying the type of engagement — the same visual language as Home/Case Study, not an approximation of it.
- **`.skill-tag`** is a new, separate component carrying `v1-baseline`'s modified look (normal case, `#444`, larger padding) forward under its own honest name, used only for the Skills/Tools rows.

**Classification values assigned, with confidence noted:**
- **Meta → Sponsored Engagement.** Direct reuse — this is the same project tagged "Sponsored Engagement" on the Homepage and Case Study. High confidence.
- **Terra Dotta → Client Engagement.** Direct reuse — matches the Homepage's own tag for this exact project. High confidence.
- **FINRA → Sponsored Engagement, Deloitte → Sponsored Engagement.** Both are SCADpro-sponsored studio courses structurally identical to Meta's (per `Professional Profile.md`'s "SCADpro Sponsored Course" framing). Reasonable inference, not a direct precedent like the two above.
- **Hack iX → Independent Research.** The weakest fit of the five, flagged directly in the file: Hack iX isn't a client relationship, isn't a sponsor relationship, and isn't research either — it's a self-founded student initiative. "Independent Research" is the closest of the three existing categories (self-directed, not commissioned) but is a real stretch semantically. Worth Nicole's direct call on whether to force it into the existing taxonomy or leave it untagged.

## What Didn't Change

Layout, identity block, Education, expand/collapse mechanism, and all other content are identical to `v1-baseline`.

## Outcome

**Status: Iterate.** Nicole: "i think how it is right now is perfect once we have the addition of this one extra tag" — suggesting this may be very close to final, pending confirmation of the classification values above (especially Hack iX).

🗄️ **Archived — refined into v3-aligned.** Nicole's same review also asked for a consistency audit of this page against Homepage/Case Study. That audit (`../Consistency Audit.md`) found three real, unexplained size drifts in components this iteration reused: `.player-card` width (260px vs. Homepage's 300px), `.logo-mark` size (40px/10px, a third undocumented size vs. the established 32px/9px standard), and `.about-links` gap (20px vs. Homepage's 24px). All three are fixed in `v3-aligned`, along with a flagged-not-fixed open question about footer `padding-top`. The tag-system fix and phone-number removal from this iteration carry forward unchanged.
