# Homepage Wireframe — v9: Rounded Final

**Generated:** Claude (Sonnet), August 2026
**Relationship to prior concepts:** Direct evolution of `v8-floating-nav`. Two changes: the nav's internal structure, and a corner-radius system applied across the page.
**Tested against:** Nicole's review of `v8-floating-nav`
**Human curation applied:** None yet — pending Nicole's review.
**Shared Components used:** Nav pattern should be added to `Shared Components/README.md` as the new reference once confirmed, replacing the v8 centered-logo version.

---

## What This Iteration Tests

Whether logo-first nav resolves the spacing complaint at its root, and whether a deliberate two-tier corner-radius system (pill/circular for small tags and badges, 16px for larger content containers) makes the rounded-pill nav feel like a page-wide decision rather than an isolated element.

## Design Rationale

**Nav spacing — diagnosed, not just patched.** The v8 nav used `justify-content: space-between` across three children (left nav group, logo, right nav group), which only visually centers the logo if both side groups are exactly equal width. They weren't — the Resume link's border/padding made the right group wider than the left, so the logo drifted off-center and the whole pill read as unbalanced no matter how padding was tuned. Moving the logo to the front collapses this to two children (logo, nav-links) with `width: fit-content` on the pill itself, so it hugs its actual content instead of being stretched to a fixed width and fighting to balance uneven groups within it. This is a structural fix, not a padding tweak.

**Corner-radius system.** Two tiers, applied consistently:
- **999px (pill/circular)** for small interactive or tag-like elements: nav links' Resume button, the mobile toggle, `.engagement-tag`, `.inline-logo` (hero trusted-by marks), and `.logo-mark` (the small company badge on Work cards, now a circle).
- **16px (soft rounded rectangle)** for larger content containers: `.placeholder-img`, `.player-card`, `.quote-card`, `.logo-placeholder.large` (Collaborations wall items). `.player-photo` gets 12px, slightly tighter since it's nested inside the already-rounded player card.

Nothing without an existing border or box got a new one — this extends the rounding language to elements already structurally distinct, rather than adding new visual containers that weren't there before.

## Strengths

- Fixes the spacing complaint by removing its actual cause, not by adjusting numbers until it looked less wrong.
- The corner-radius system is a real, statable rule (two tiers, applied by element type) rather than rounding things one at a time — this should make it trivial to apply consistently going forward as new content gets added.
- `.logo-mark` becoming a circle is a small but genuinely nice touch — small circular company marks are a very standard, recognizable pattern that reads as intentional.

## Weaknesses

- `width: fit-content` on the nav means its width now depends entirely on the logo text length and the four nav labels — if the real logo/wordmark ends up meaningfully longer or shorter than the placeholder, the pill's proportions will shift and are worth a second look with real content.
- The 16px/999px split is a reasonable starting system, not a validated one — worth treating as a strong first draft for the Design System phase rather than a final spec.

## Research Informing This Direction

- **Nicole's direct request (this session):** the sole source for both changes.

## Who This Serves Best

Not persona-differentiated — this is a chrome/visual-consistency change, not a content or funnel decision.

## Outcome

**Status: 🔒 Promoted — August 2026.** Confirmed final by Nicole ("perfect.") This copy in `_Promoted/Homepage/` is the canonical promoted artifact for the homepage structural direction — the source iteration remains at `05_Assets/Wireframes/Homepage/v9-rounded-final/` for full version history. This prototype is the structural reference for the Design System phase: visual design (typography, color, imagery, branding) may now be applied on top of it, but the validated structure and behavior should not be re-litigated without a documented reason.
