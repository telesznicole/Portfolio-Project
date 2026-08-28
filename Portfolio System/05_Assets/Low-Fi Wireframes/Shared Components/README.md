# Shared Components — Reference Patterns

> These are copy-from references, not live dependencies. Per Wireframing Workflow §2 and §9, no wireframe iteration links to this folder at runtime — markup here gets copied directly into an iteration's own `index.html`/`styles.css`, and any iteration that does so should note the lineage in its `notes.md`.

---

## Nav (current reference, as of Homepage promotion — 2026-08)

Source: `_Promoted/Homepage/`. Floating pill, sticky with margin from the top edge, logo leading, single nav-links group, fit-content width (do not force a fixed width — this was the fix for a real spacing bug in an earlier version; see Homepage Decision Log entries).

```html
<div class="site-header-wrap">
  <nav class="floating-nav" aria-label="Primary">
    <a href="/" class="nav-logo">[Name]</a>
    <div class="nav-links">
      <a href="/#work">Work</a>
      <a href="/#about">About</a>
      <a href="/#contact">Contact</a>
      <a href="/resume" class="nav-resume">Resume</a>
    </div>
    <button class="nav-toggle" id="nav-toggle" aria-expanded="false" aria-controls="mobile-nav-panel">Menu</button>
  </nav>
  <div class="mobile-nav-panel" id="mobile-nav-panel">
    <a href="/#work">Work</a>
    <a href="/#about">About</a>
    <a href="/#contact">Contact</a>
    <a href="/resume" class="nav-resume">Resume</a>
  </div>
</div>
```

**On any page other than the homepage** (case studies, How I Work, Resume), links use full paths with anchors (`/#work`) rather than bare anchors (`#work`), so they navigate to the homepage and land on the right section — per IA cross-linking rules.

Base CSS: see `Homepage/_Promoted/Homepage/styles.css` (`.site-header-wrap`, `.floating-nav`, `.nav-logo`, `.nav-links`, `.nav-resume`, `.nav-toggle`, `.mobile-nav-panel`).

---

## Corner-Radius System (locked as of Homepage promotion)

Two tiers, applied only to elements that already have a border/box — never added just to have something to round.

- **999px (pill/circular):** small tags, badges, buttons — nav links' Resume button, mobile toggle, `.engagement-tag`, `.inline-logo`, `.logo-mark` (circular).
- **16px (soft rounded rectangle):** larger content containers — `.placeholder-img`, `.player-card`, `.quote-card`, `.logo-placeholder.large`. `.player-photo` uses 12px (nested, slightly tighter).

---

## Typography Scale (locked as of Homepage promotion)

- **Section titles:** `clamp(32px, 5vw, 60px)`, weight 800, letter-spacing -0.01em — reserved for a page's own top-level moments (Homepage: Work / About / Collaborations). Not intended to repeat at high frequency on a denser page — see Case Study reference below for how this scales down for subsections.
- **Hero/page headline:** `clamp(32px, 5.5vw, 56px)`, weight 800, line-height 1.2.
- **Body/proof text:** 14–16px, regular weight, `#333`–`#444`.

---

## Spacing Rhythm (locked as of Homepage promotion)

No border-line dividers between sections, anywhere. Separation comes from padding/margin alone. Homepage uses ~100–140px top/bottom padding between major sections. Denser pages (case studies) should nest a smaller rhythm within this — see Case Study wireframes for the specific values tested.

---

## Card & Component Patterns (locked as of Homepage promotion)

- **`.player-card`** — bordered (16px radius), photo + name + title. Reused directly for case study "identity" moments.
- **`.quote-card`** — bordered (16px radius), large quotation-mark glyph, upright text, citation. Reused directly wherever a collaborator quote appears.
- **`.stats-banner`** — plain spread flex row, big bold numbers + small labels, no border. Reusable pattern for any "quick facts" moment, not exclusive to the homepage's specific three stats.
- **Click-to-expand pattern** — first validated in the archived `v1-compact-dashboard` homepage concept: a real `<button>` with `aria-expanded`, collapsed state still shows essential info, expansion reveals detail on click (never hover). Legitimate, reusable, accessible disclosure pattern for any list that needs to compress detail.

---

## Logo Placeholder Pattern

```html
<div class="logo-placeholder" aria-label="[Company Name]">
  <span>[Company Name]</span>
</div>
```

```css
.logo-placeholder {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 48px;
  min-width: 96px;
  padding: 0 16px;
  border: 1px solid #ccc;
  font-size: 12px;
  color: #555;
  background-image: repeating-linear-gradient(45deg, #f5f5f5, #f5f5f5 5px, #fff 5px, #fff 10px);
}
```

Wireframe-fidelity stand-in — real logo assets get swapped in during the Design System phase.
