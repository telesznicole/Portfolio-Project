# Information Architecture

> Status: 🔒 Implementation Document (Revision 2)
> This document translates the calibrated funnel strategy (Architecture A, Revised V2) into a build-ready information structure. Revision 2 changes the structural implementation only — Home, Work (index), About, and Contact are consolidated into a single continuous-scroll homepage with anchor navigation. The underlying strategy, audience priorities, and progressive disclosure model are unchanged from Revision 1.

---

## Strategic Basis

This IA implements a single strategy: **maximize qualified interview opportunities while signaling clear differentiation through method, not sector.** The funnel structure (Recruiter → Hiring Manager/PM → Director/Senior Designer/Engineer) is preserved in full. Differentiation is carried through positioning language and case study depth, not through narrowing the audience or company types the site appeals to.

**What changed in this revision:** Home, Work (index), About, and Contact are no longer separate page loads. They are sections of a single continuous-scroll homepage, reachable via anchor navigation. This reduces click-friction for the Recruiter persona, who is documented as scanning rather than exploring, without altering what content exists or how it's layered. The three flagship case studies and the How I Work page remain standalone pages, since they carry genuine depth (Layers 1–3) that a scroll format cannot accommodate.

---

## 1. Navigation

**Primary navigation (persistent, every page):**
`[Name/Logo — returns to homepage top] · Work · About · Contact · Resume`

**Behavior rules:**
- On the homepage: `Work`, `About`, and `Contact` scroll-jump to their respective anchored sections.
- On any standalone page (a case study, How I Work, or Resume): the same nav items navigate to the homepage and land on the corresponding anchor (e.g., `/#about`), rather than assuming the visitor is already on the homepage.
- `Resume` is the one nav item that is not an anchor — it opens a standalone page.
- Anchor-jump navigation must be fully keyboard-reachable and must respect reduced-motion preferences; this is a navigation requirement, not a visual polish item, and must be built in from the start.
- `How I Work` is intentionally **not** in primary navigation. This is unchanged from Revision 1 — it protects the fast scan while remaining discoverable through inbound links (see Section 3.5).

**Persistent footer (every page):**
`Resume (download) · Email · LinkedIn · GitHub · Feminist UX (external)`

The footer guarantees Resume and Contact remain one action away from any page, including deep within a case study, without requiring a return to the homepage top.

---

## 2. Sitemap

```
/                                   (continuous-scroll homepage)
├── #hero                           (positioning — implicit top, not a nav target)
├── #work                           (anchor: flagship case study cards + Selected Collaborations)
├── #about                          (anchor)
├── #contact                        (anchor)
│
├── /work/meta-interaction-design   (standalone case study page)
├── /work/feminist-ux               (standalone case study page)
├── /work/terra-dotta               (standalone case study page)
│
├── /how-i-work                     (standalone, unlisted — no nav entry)
├── /resume                         (standalone utility page)
└── /404
```

Selected Collaborations (BMW, FINRA, Deloitte, Hyundai MOBIS, Hack iX) live inline within the `#work` anchor section — they do not have their own routes unless one is later promoted to flagship status (see Section 6).

Case study slugs are placeholders for structure, not final copy.

---

## 3. Page Hierarchy & Content Requirements

### 3.1 Homepage (Continuous Scroll)

The homepage is a single page composed of four sections, in this order. All content here is Layer 0 — default-visible, no interaction required to reach it.

#### 3.1.1 Hero (top of page, implicit — not a nav item)
- Positioning statement — method-led, not sector-led
- Credibility bar — recognizable collaborator logos (Meta, BMW, Deloitte, FINRA, Hyundai MOBIS)

#### 3.1.2 Work (`#work`)
- Three flagship case study cards, fixed order:
  1. **Meta** — highest-recognition credibility anchor
  2. **Feminist UX** — framed as evidence of research rigor and end-to-end capability
  3. **Terra Dotta** — proof of delivery inside real client constraints
- Each card: thumbnail, title, one proof callout. Clicking a card navigates to its standalone case study page.
- **Selected Collaborations module**, positioned below the flagship cards: BMW, FINRA, Deloitte, Hyundai MOBIS, Hack iX. Each entry: sponsor name/logo, role, one-line contribution, timeframe. These remain inline content within this section — no dedicated pages unless promoted (Section 6).

#### 3.1.3 About (`#about`)
- Method-led positioning, consistent with Hero (no sector-specific framing as the lead)
- Brief philosophy context — two to three sentences, not a standalone essay
- Leadership mention, anchor-linked to the Hack iX entry in `#work`
- Link to `/how-i-work`
- Link to Feminist UX external site

#### 3.1.4 Contact (`#contact`)
- Email, LinkedIn, GitHub
- Direct email must be visible as text/mailto, not a submission-only form

---

### 3.2 Case Study Template (applies to all 3 flagship studies — standalone pages)

Unchanged from Revision 1. Every flagship case study follows the same structure so future case studies can be added without redesigning the template.

**Layer 1 — Executive Summary (visible on page entry):**
- Sponsor/organization and engagement type, stated immediately
- Role and team composition
- Duration
- Problem statement
- Proof — accepts quantitative metrics **or** qualitative/directional evidence as equally valid

**Layer 2 — Full Narrative:**
- Context → Constraints → Decisions (including rejected alternatives) → Trade-offs → Outcome
- Mandatory retrospective: what went wrong, what was cut, what you'd change

**Layer 3 — Deep/Technical (continued scroll, never gated):**
- Edge cases and system states, where applicable
- Engineering collaboration and handoff detail, where applicable
- Link to `/how-i-work` where AI-assisted workflow materially shaped the project

**Every case study page includes:**
- A persistent link back to `/#work` (not just "back," since there is no standalone Work page to return to)
- Cross-links to the other two flagship case studies

**Feminist UX case study specifically:** also links out to the external companion site (feministux.org) as the canonical deep-dive destination.

---

### 3.3 Selected Collaboration Entries

Unchanged in content requirement from Revision 1, now living within `#work` rather than a separate `/work` route:
- Sponsor/organization name and logo
- Role and engagement type
- One-sentence contribution or outcome
- Timeframe

No executive summary schema, no mandatory retrospective. Whether these render as inline cards, a compact list, or lightweight expandable entries is a design-phase decision, not an IA one.

---

### 3.4 How I Work (Standalone, Unlisted)

**Purpose:** Documents the AI-collaborative workflow, human/AI division of labor, and process discipline for reviewers who specifically value this — primarily Engineers and systems-oriented Directors.

**Access rule (unchanged):** No primary navigation entry. Reachable only via:
- The link from `#about`
- Links from relevant flagship case studies' Layer 3

**Return path:** Includes a persistent link back to `/#about`, since there is no dedicated About page to return to.

---

### 3.5 Resume (Standalone)

**Purpose:** Direct recruiter/ATS utility, and a page that can be shared or linked independently of the rest of the narrative.

**Requirements:**
- Viewable inline (not download-only)
- Downloadable PDF available
- Linked from primary nav and footer on every page without exception

This page remains standalone rather than becoming a homepage section, since it functions as a distributable utility artifact (e.g., linked directly from an application or LinkedIn) rather than part of the scroll narrative.

---

### 3.6 404 / Not Found

**Requirement:** Must redirect attention to the homepage top (`/`), never a dead end.

---

## 4. Progressive Disclosure Strategy

The four-layer model is unchanged — only where Layer 0 physically lives has changed.

| Layer | Where | What's visible | Access method |
|---|---|---|---|
| **0 — Index** | Homepage (`#work` section) | Cards: title, one proof point, thumbnail; About and Contact content | Default view within the continuous scroll, no page load required |
| **1 — Executive Summary** | Top of each standalone case study page | Sponsor, role, problem, proof | Page load after clicking a Work card |
| **2 — Full Narrative** | Case study body | Context, constraints, decisions, trade-offs, retrospective | Continued scroll or read |
| **3 — Deep/Technical** | Case study depth | Edge cases, systems detail, engineering handoff, How I Work links | Continued scroll or in-page navigation |

**Non-negotiable rule, unchanged:** no qualification-relevant content may be hidden behind hover-only reveals, scroll-jacked sequences, or login/password gates, at any layer.

---

## 5. Cross-Linking Strategy

| From | To | Purpose |
|---|---|---|
| Primary nav (any page) | `/#work`, `/#about`, `/#contact` | Anchor jump if on homepage; navigate-then-jump if on a subpage |
| `#work` cards | Individual case study pages | Layer 0 → Layer 1 entry |
| `#work` (Selected Collaborations) | Inline entries | Breadth without depth commitment |
| Case study (any) | Another flagship case study | Related work, keeps reviewers on-site |
| Case study (any) | `/#work` | Return path, since no standalone Work page exists |
| Case study Layer 3 | `/how-i-work` | Surfaces process depth only to readers who reach it |
| Feminist UX case study | feministux.org (external) | Canonical deep-dive destination |
| `#about` | `/how-i-work` | Single explicit link |
| `#about` | Feminist UX (external) | Reinforces flagship differentiation |
| `#about` | Hack iX entry in `#work` | Leadership credibility, in-page anchor link |
| `/how-i-work` | `/#about` | Return path, since no standalone About page exists |
| Every page footer | `/resume`, contact info, LinkedIn, GitHub | Persistent access regardless of entry point |
| `/404` | `/` (homepage top) | Recovery path, no dead ends |

---

## 6. Scalability for Future Projects

**Promotion path:** A Selected Collaboration entry (or a new project entirely) may be promoted to flagship case study status once it produces a shipped, outcome-rich result. Promotion means: creating a new standalone page under `/work/[slug]` using the existing case study template, and adding a card for it within `#work`.

**Rotation policy:** The flagship slot count is capped at **three**. When a new project is promoted, the weakest-fitting existing flagship case study rotates down — its standalone page is either redirected to its new lightweight entry within `#work`, or retired with a redirect to `/#work`, so that any previously shared link (e.g., on LinkedIn or in an application) does not break. Academic/conceptual work rotates out first, in favor of shipped commercial work, as your career progresses.

**Template stability:** All future flagship case studies conform to the existing three-layer template (Section 3.2). No new page structure should ever need to be invented — only new content within the established schema.

**Confidentiality governance:** Any future project under NDA must be handled through sanitized or white-labeled framing rather than password-gating or omission. No page on this site should ever require a credential to access.

**How I Work maintenance:** Updates independently as your workflow evolves, decoupled from navigation and project structure.

---

## 7. Non-Negotiable Constraints Carried Into Design Phase

- WCAG 2.1 AA compliance baseline across every page and section
- No content reachable only via hover, scroll-jacking, or non-standard scroll mechanics
- Anchor-jump navigation must be keyboard-operable and respect `prefers-reduced-motion`
- **Homepage asset weight discipline is a hard requirement, not optional:** since Hero, Work, About, and Contact now load on a single request, below-the-fold images and assets must be lazy-loaded to preserve the sub-1.5-second mobile load target
- Full functionality and content parity on mobile — a majority of initial Recruiter review happens on mobile devices
- Zero password gates anywhere on the site
- Every page, including standalone case studies and How I Work, retains the persistent nav and footer without exception
