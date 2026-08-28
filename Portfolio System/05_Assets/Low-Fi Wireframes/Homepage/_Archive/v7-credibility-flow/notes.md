# Homepage Wireframe — v7: Credibility Flow

**Generated:** Claude (Sonnet), August 2026
**Relationship to prior concepts:** Direct refinement of `v6-refined-final`. Three of four changes are small execution fixes; one is a structural reorder Nicole explicitly requested and I've called out clearly as an override of an earlier locked decision.
**Tested against:** Nicole's review of `v6-refined-final`; Decision Log 2026-08-04 (final round)
**Human curation applied:** None yet — pending Nicole's review.
**Shared Components used:** Nav base from `Shared Components/README.md`; logo-placeholder and inline-logo patterns.

---

## What This Iteration Tests

Four things: whether Work card tags read better inline than stacked, whether removing the stats border resolves the "I don't like the box" feedback without reopening the "floating" problem it was meant to fix, whether reordering Stats+Quotes to follow About produces the narrative logic Nicole described, and whether a card-based quote treatment reads as more considered than the single border-left blockquote used everywhere until now.

## Design Rationale, By Change

**1. Work card tags, same line, right-aligned.** `.case-title-row` is now `justify-content: space-between` — logo mark and role title on the left, engagement tag pushed to the right edge of the card. The gap between them does the "spacing to fill the line" work Nicole asked for, without needing an explicit spacer element.

**2. Stats border reverted.** Back to a plain flex row, no bounding box. I want to flag honestly: this doesn't solve the original "floating in space" complaint on its own — it was solved by moving Stats next to Quotes instead (see next point), so the two now anchor each other visually rather than needing a border to do that job.

**3. Structural reorder — Stats + Quotes moved after About, as one section.** This is the one substantive structural change, and it directly overrides the round-4 decision that placed the stats banner immediately after Work (justified then by Recruiter-priority sequencing). I want to be transparent about that trade-off rather than quietly walk it back: the new order is Work → About → Stats+Quotes → Collaborations, which means proof-dense credibility content now sits one section later than it did before. I think Nicole's narrative logic ("who is Nicole, then how do we know she's actually good") is a legitimate and clearer reason to make this trade — it's a real reprioritization, not a mistake, and it's logged as such in the Decision Log rather than silently overwritten.

**4. Quote treatment redesigned for multiple quotes.** The single border-left italic blockquote is gone. In its place: `.quote-card`, a bordered card with a large quotation-mark glyph, upright (non-italic) quote text, and a citation line — built as a `.quotes-row` grid so a second (or third) quote drops in without redesigning anything. Two quotes are shown now as placeholders; the grid holds up fine at one, two, or three.

## Strengths

- All four changes are small, targeted, and don't disturb anything that wasn't specifically flagged.
- The quote card format is genuinely different from the border-left style, not a minor variation of it — addresses "some other way to showcase them" directly.
- The Stats+Quotes pairing gives both elements a reason to exist next to each other: numbers make a claim, quotes back it up in someone else's words, immediately adjacent.

## Weaknesses

- The reorder is a real trade-off, not a free improvement — proof-dense content now appears later in the page than the round-4 Recruiter-priority logic argued for. Worth a final gut-check that this is the right call before it locks in for good.
- Removing the stats border means the original "feels disconnected" complaint is only indirectly addressed (by the new neighboring quotes), not directly solved — if it still feels loose once quotes are beside it, that's worth flagging rather than assuming this fully closes the issue.
- The quote card's large quotation-mark glyph is a new visual element not used anywhere else on the page — worth confirming it reads as intentional rather than a one-off.

## Research Informing This Direction

- **Nicole's review of `v6-refined-final`:** the direct and sole source for all four changes.
- **Decision Log, round 4 entry (stats-after-Work):** the specific prior decision this iteration knowingly overrides.

## Who This Serves Best

Same audience as the confirmed winning direction throughout.

## Outcome

**Status: Superseded**, not discarded. Confirmed as final ("perfect i like this final version") for every section except the nav, which was the one remaining open item. Carried forward unchanged into `v8-floating-nav`, which is identical to this file except for the header.
