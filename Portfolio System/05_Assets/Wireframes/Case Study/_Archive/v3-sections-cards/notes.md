# Case Study Wireframe — v3: Sections in Cards

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-refined-baseline` (sidebar exec-summary card, no divider, refined bold type, toned-down retrospective heading).
**Tested against:** Nicole's review of `v2-cards-body` — she liked the expandable Decisions cards and asked to see "a version where the different content sections themselves are in cards... it's something I saw elsewhere and am interested to see how that looks in my own work."
**Human curation applied:** None yet — pending review.
**Shared Components used:** Retrospective's bordered-box treatment, generalized to every narrative section; sidebar card + no-divider standard from `v3-refined-baseline`.

---

## What This Iteration Tests

A third, more structural card placement beyond sidebar-only and Decisions-only: every narrative section — Context, Constraints, Decisions, Trade-offs, Outcome, Retrospective, and the deeper-look block — becomes its own bordered card, not just the two places prior variants confined card treatment to. This is a genuinely different density than `v2-cards-body`'s "sparingly, one section" approach, so it's worth reading closely for whether it still feels restrained or crosses into the "overdone" territory Nicole flagged in `v1-modular-cards`.

## The Change

Every `.narrative-block` gets a `20px`-radius border and `36–40px` padding, with `32px` gaps between cards replacing the previous `72px` flowing-text spacing (card boundaries now do the separating work whitespace alone did before). Because every section carries its own elevation now, narrative headings are toned down uniformly — `21px`/`700` weight — applying the same logic that shrank just Retrospective's heading in the baseline, generalized since every section has a box competing with it now. The "considered and rejected" panel inside Decisions switches from a bordered box to a filled gray panel, avoiding a border-inside-a-border look now that its parent section is already boxed. Retrospective no longer needs a special-cased border — it's a card like everything else, differentiated only by a faint background tint.

## What Didn't Change

Sidebar card, no-divider correction, and page structure/copy are identical to `v3-refined-baseline`. Decisions stay flowing text with the framing paragraph and rejected-alternative panel — not the click-to-expand cards from `v2-cards-body`/`v3-cards-both`. Combining both concepts (section cards + expandable Decisions cards) is a possible future variant but deliberately not this one, to isolate what "sections in cards" alone looks like first.

## Strengths

- Directly answers Nicole's stated curiosity — a clean, literal version of the pattern she referenced seeing elsewhere, built against her own content structure.
- The uniform heading tone-down keeps every section internally consistent — no card fights its own heading for attention, unlike the density problem `v1-modular-cards` had.
- Clear visual chunking may help a skimming reader (e.g., a Hiring Manager short on time) jump between sections without the page reading as one long scroll.

## Weaknesses

- This is the highest card-density variant in the whole set — six-plus boxed sections versus one or two in every prior card variant — and the one most likely to reproduce the "loses hierarchy" concern if it's going to at all.
- The full-bleed narrative images no longer visually break up the page the same way once every section around them is boxed — worth checking whether the page still feels like it breathes, or starts to feel like a stack of uniform modules.
- Losing the large, confident heading scale (Nicole's stated favorite thing about `v2-bold-type`) across every section, not just Retrospective, is a bigger trade than the baseline's single correction — worth watching closely whether this reads as "necessary because now every section has a box" or as "gave up too much of what already tested well."

## Who This Serves Best

Skimming readers — Hiring Managers or PMs scanning for the shape of the story without committing to reading every section start-to-finish — benefit most from the clearer chunking. A reader who wants the immersive, flowing narrative Nicole liked about `v2-consistency` and `v2-bold-type` may find this variant's density works against that.

## Outcome

**Status: 🗄️ Discarded.** Nicole: "As I suspected this is just too much. I like the tasteful inclusion of cards as we did in decisions, maybe we can find a few other tasteful and purposeful places to inject that." Confirms the density concern flagged above under Weaknesses — wrapping every section lost the hierarchy this concept was trying to preserve. The underlying instinct (cards can work well in more than one place, not just Decisions) is *not* discarded — it's carried forward into `v4-cards-tasteful`, which looks for a small number of structurally-justified spots instead of applying the treatment universally.
