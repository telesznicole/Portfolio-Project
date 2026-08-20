# Selected Assets

This folder holds the **final, curated images** that will actually appear in the live case study — a small, deliberate subset of what's in `00_Raw/`, not a duplicate of it.

## Naming Convention

`[section]_[number]_[short-description].[ext]`

Examples:
- `context_01_original-brief.png`
- `decisions_02_rejected-concept-sketch.png`
- `outcome_01_final-presentation-slide.png`
- `hero_01_meta-glasses-mockup.png`

Using the section name as a prefix means assets sort naturally by where they're used, and it's immediately clear to Claude (or anyone) which part of the narrative each image supports — no separate manifest needed for this folder, the filename carries the context.

## What Belongs Here vs. `00_Raw/`

- `00_Raw/` = everything, unfiltered. The working dump.
- `02_Selected_Assets/` = only what's actually going into the finished case study, sized/cropped as needed for use, captioned in the content files (`01_Content/`) where they're referenced.

Move things here once we've decided, during the section-by-section conversation, that a specific asset is earning its place in the final piece.
