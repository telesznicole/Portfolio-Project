# Shared Components — Reference Patterns

> These are copy-from references, not live dependencies. Per Wireframing Workflow §2 and §9, no wireframe iteration links to this folder at runtime — markup here gets copied directly into an iteration's own `index.html`/`styles.css`, and any iteration that does so should note the lineage in its `notes.md`.

---

## Nav + Footer (current reference, as of 2026-08-04)

Nicole's feedback (round 1 review): "the header and footer are extremely basic and leave a lot to be desired... glaringly boring and borderline ignorable." Explicitly deferred — not being redesigned this round, kept as a placeholder skeleton so wireframes stay focused on layout/pacing rather than chrome. Revisit when the Design System phase begins.

**Nav pattern (desktop + mobile toggle):**

```html
<header class="site-header">
  <div class="logo">[Name]</div>
  <nav class="primary-nav" id="primary-nav">
    <a href="#work">Work</a>
    <a href="#about">About</a>
    <a href="#contact">Contact</a>
    <a href="#" class="nav-resume">Resume</a>
  </nav>
  <button class="nav-toggle" id="nav-toggle" aria-expanded="false" aria-controls="primary-nav">
    Menu
  </button>
</header>
```

**Footer pattern:**

```html
<footer class="site-footer">
  <a href="#">Resume</a>
  <a href="mailto:hello@example.com">Email</a>
  <a href="#">LinkedIn</a>
  <a href="#">GitHub</a>
  <a href="#">Feminist UX</a>
</footer>
```

**Mobile toggle script:**

```html
<script>
  var toggle = document.getElementById('nav-toggle');
  var nav = document.getElementById('primary-nav');
  toggle.addEventListener('click', function () {
    var expanded = toggle.getAttribute('aria-expanded') === 'true';
    toggle.setAttribute('aria-expanded', String(!expanded));
    nav.classList.toggle('open');
  });
</script>
```

Base CSS for these lives identically across every wireframe iteration to date — see any `styles.css` in `Homepage/v1-*` or `v2-*` for the current shared treatment (`.site-header`, `.primary-nav`, `.nav-toggle`, `.site-footer`).

---

## Logo Placeholder Pattern (new as of round 2)

Introduced in round 2 to replace plain-text company names with recognizable logo-shaped placeholders, per Nicole's request to lean into logos for recognition speed.

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

This is a wireframe-fidelity stand-in — actual logo assets get swapped in during the Design System phase. The bordered/textured box exists so spacing and grid behavior can be evaluated honestly, the same reasoning applied to `.placeholder-img` blocks throughout every wireframe.
