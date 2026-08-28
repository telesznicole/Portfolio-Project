# Case Study Wireframe — v4: Progress Numbered

**Generated:** Claude (Sonnet), August 2026
**Base:** `v3-cards-both` (confirmed standard baseline).
**Tested against:** Nicole's round-3 request for new stylization directions, answering the same consistency concern as `v4-progress-segmented` from a different angle.
**Human curation applied:** None yet — pending review.
**Shared Components used:** None new — reuses only the existing bold-type typographic voice (`font-weight: 800/700` scale already locked for headings).

---

## What This Iteration Tests

The most literally consistent possible answer to the concern: a progress indicator with zero new shapes or components, built entirely from typography.

## The Change

Each progress-nav item is prefixed with a two-digit index number (01–06), muted gray by default, becoming bold and dark on the current section. No marker, no line, no pill.

## Strengths

- Introduces nothing new visually — purely a typographic device, consistent with the already-locked bold-type identity.
- Numbers also communicate scope ("6 sections total") in a way dots and pills don't as directly.

## Weaknesses

- The quietest of the three new options — worth checking whether it still reads as a deliberate "stylization" or just as numbered plain links, which is closer to what was already tested (and not chosen on its own) in earlier rounds.

## Outcome

**Status: 🗄️ Archived — close, but not chosen.** Even after the numbering-consistency fix in `v5-progress-numbered`, Nicole flagged a deeper problem: "especially with how the numbering pairs with the retrospective and deeper look. Since those have separate design from the other elements, it kind of reads weird and looks off. If it weren't for that I would be more sold." The number badge, as a per-section device, visually competes with Retrospective's and Deep/Technical's own distinct box/heading treatments in a way the stepper's marker-and-line doesn't. `v3-progress-stylized` chosen instead.
