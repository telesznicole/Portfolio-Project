# Case Study Wireframe — v2: Breathing Room

**Generated:** Claude (Sonnet), August 2026
**Base:** `v2-consistency` — this variant changes exactly one more thing.
**Tested against:** Nicole's review of `v1-editorial-pill` — "I like how this one feels like it has more breathing room... it does make me want that version [the sidebar] to feel like it has more whitespace and breathing room like this one does."
**Human curation applied:** None yet — pending review.
**Shared Components used:** Same as `v2-consistency`, unchanged.

---

## What This Iteration Tests

Whether importing the spacing generosity Nicole responded to in `v1-editorial-pill` into the sidebar structure she actually preferred produces the best of both — without needing to give up the persistent context she liked about the sidebar in the first place.

## The Change

Every spacing value increased, none dramatically on its own, but consistently: narrative block spacing 72px → 104px (the core change, roughly matching `v1-editorial-pill`'s 88px and going slightly further, since this layout doesn't have to compete with a full-width single column for visual weight), image margins 56px → 80px, sidebar internal gap 40px → 56px, retrospective and rejected-alt padding both increased, footer and crosslinks padding increased. Every change is marked with a `(+)` comment in the CSS so the delta from `v2-consistency` is easy to audit line by line.

## What Didn't Change

No new sections, no new components, no typography changes (that's `v2-bold-type`'s job) — this is a pure spacing pass, isolated so it can be judged on its own before being combined with anything else.

## Strengths

- Directly imports the one thing Nicole explicitly liked better about the losing concept, without inheriting that concept's actual problems (the uneven column widths she flagged).
- Every spacing change is documented inline, so if this gets combined with `v2-bold-type` later, it's trivial to see exactly what's being merged.

## Weaknesses

- Larger sidebar gaps (56px) mean the sticky sidebar now occupies more vertical space per screen — worth checking this doesn't push the exec summary or progress nav off-screen at shorter viewport heights, especially on laptops rather than large desktop monitors.
- More generous narrative spacing means this is now the longest-scrolling case study concept tested, by a meaningful margin — a real trade-off for the breathing room, not a free improvement.

## Who This Serves Best

Not persona-differentiated — a pacing decision, not a content or audience one.

## Outcome

**Status: Discarded**, per Nicole's review (August 2026).

**Feedback:** "We can ignore this one. I like the spacing in v2-consistency better."

The breathing-room instinct itself wasn't wrong — Nicole independently noted "I feel like I can see some more spacing and breathing room in this one already" when reviewing `v2-consistency`, which didn't change spacing at all. That's a useful signal: the perceived improvement was likely from the corrected progress-nav and cleaner Work cards, not from more padding. This variant's specific spacing values are not carried forward.
