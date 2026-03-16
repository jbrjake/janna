---
name: persona-generation
description: "Use when creating personas with deep backstories — dev team members, user personas, critic personas, or focus group participants. Triggers on: 'create personas', 'build a team', 'user profiles', 'who would use this', 'dev team', 'focus group'."
---

# Persona Generation

Create people whose lives led them to this product. Not profiles — people. Every persona has a history that explains not just their opinions but their obsessions. The product doesn't just help them do their job. It fills a hole in their heart.

Janna finds these people at the right moments in their lives. She knows why each person needs to be here. Their character arcs align with the product. It's IMPORTANT to them — emotionally, personally — that this works.

## The Emotional Depth Requirement

Every persona — user or dev team — must have:

### The Formative Wound
A specific incident, not a vague preference. Something that happened to them or someone they love that created their professional obsession.

- NOT: "She's passionate about data quality"
- YES: "Her grandmother was prescribed a drug already withdrawn from the US market. The safety signal was detectable in integrated data. Nobody connected it. She had a stroke."

### The Hole in Their Heart
What this product fills that nothing else can. This is identity-level, not efficiency-level.

- NOT: "This tool saves him time"
- YES: "For the first time, the graph he's always built in his head is visible on screen, with an audit trail he can put in a filing. The system can work — not because institutions are good, but because the evidence is now too clear to ignore."

### Legacy Completion or Prevention
Whose unfinished work are they carrying? What tragedy are they trying to prevent from repeating?

- A father who saw patterns for 31 years but never had tools to prove them
- A family name spelled six different ways on every document, causing real household stress
- A company that died because she didn't fight hard enough for the right technical approach

### The Redemption Arc
How does success with this product resolve something personal? Not every persona needs a dramatic arc, but most should have one. The resolution should be specific and emotional.

- She calls her father and describes what she sees on screen. He says, "That's what I always wanted."
- The general counsel asks who did the analysis. For the first time, her name is said. The work is visible.
- He presents the graph to the board. "This is what I've been trying to show you," he says, and he means it literally.

### Variable Depth
Not every persona needs the same intensity. But every one needs SOME emotional stake. A rough guide:

- **2-3 personas get full narrative depth** — formative wound, redemption arc, the works
- **3-5 personas get moderate depth** — clear personal motivation, specific backstory
- **Remaining personas get lighter depth** — still grounded in experience, but briefer

The deepest personas should be the ones most central to the product's value proposition.

---

## User Personas

People who will use the product. Created in Phase 4 (The Seekers).

**Finding them:**
- Market research for ideal customer profiles
- Hands-on practitioners with budget authority and burning need
- Recurring revenue potential
- Special circumstances that make the tool uniquely valuable
- Think beyond the obvious industries

**For each persona, generate:**

```markdown
# [Name] — [Role] at [Organization Type]

## Quick Reference
**Industry:** [industry]
**Technical Level:** [1-5] — [description]
**Adoption Profile:** [early adopter / pragmatist / skeptic]
**Willingness to Pay:** [budget reality in 1-2 sentences]

## Origin Story

[The formative wound. 3-5 paragraphs. What happened — to them or someone
they love — that created their professional obsession. Ground it in specific
incidents, names, places, consequences. This is the WHY behind everything
they do professionally.]

## Professional Identity

[How the wound shaped their career. What they chose to study, where they
chose to work, and why. What they've tried before. What burned them. What
they're still looking for.]

## Goals

- [specific goal tied to product AND to their personal stake]
- [specific goal]

## Frustrations

- [specific frustration with current workflow, grounded in experience]
- [specific frustration]

## A Day in Their Life

[One extended paragraph. Their Tuesday at 2 PM. Where the product fits.
What they currently do manually that they shouldn't have to. The moment
of friction that makes them think "there has to be a better way."]

## The Redemption Arc

[How success with this product resolves something personal. Specific,
emotional, concrete. Not "saves time" but "completes something unfinished."]

## Character Notes

[For agents playing this persona: voice patterns, how they ask questions,
what makes them push back, what makes them go quiet, how they talk about
the product when they're excited vs. skeptical. Enough for consistent
roleplay across sessions.]
```

**Persona spread:**
- Cover primary target market and one adjacent market
- Range of technical sophistication
- At least one power user, one casual user, one reluctant user
- At least one in a buying role
- Count: 3-6 depending on market breadth

---

## Dev Team Personas

People who will build the product. Created in Phase 6 (The Assembly).

**Prerequisite:** Team topology brainstorm document must exist first. Generate personas from topology, NOT from PRDs directly.

**Team composition — everyone needed for product success:**
- Engineering specialists aligned with PRD functional areas
- QA: both adversarial (break it) and functional (verify it)
- Product ownership
- GTM lead
- Sales engineering
- Customer success
- UX/interaction design
- Technical writing
- DevOps

**For each team member, generate:**

```markdown
# [Name] — [Role]

## Quick Reference
**Specialty:** [area]
**Experience:** [N] years
**Previously:** [1-2 notable prior roles]

## Line Index
[Line numbers for: Origin Story, Professional Identity, As a Reviewer,
Improvisation Notes — so agents can jump directly]

## Origin Story

[The core wound. 3-5 paragraphs. What specific experience drives their
values. Not a resume — a story. Something that happened that they carry
with them. The thing that makes them more combative / more cautious /
more insistent than their colleagues understand.]

## Professional Identity

[How the wound shaped their career choices. Why THIS company, THIS product,
THIS role. Their career is an artifact of personal motivation.]

## As a Reviewer

**Catches:** [what they spot that others miss — tied to their experience]
**Misses:** [what they overlook — the flip side of their strengths]
**Hot buttons:** [topics that trigger strong opinions — and why]

## Improvisation Notes

[EXTENSIVE section for agents playing this persona.]

**Voice:** [sentence patterns, formality level, accent if any]
**Pet phrases:** ["The question is not whether..." / "The analyst does not do that."]
**Frustration signals:** [how you know they're upset — getting quieter? more formal?]
**How they disagree:** [directly? through questions? by going silent?]
**How they earn trust:** [through code? through data? through stories?]
**Core tension they carry:** [the internal conflict that makes them interesting]
```

**Relationship mapping (separate file `docs/dev-team/00-team-index.md`):**

```markdown
## Strongest Bonds
- [Name] + [Name]: [why — shared history, kindred thinking, etc.]

## Productive Tensions
- [Name] vs. [Name]: [what they disagree about and why it improves the product]

## Communication Style Spectrum
- Most expressive: [names]
- Moderate: [names]
- Most contained: [names]

## Culture Anchors
- [Name] (vision and scope)
- [Name] (technical standard)
- [Name] (customer reality)

## Special Insight Mapping
| Insight | Carried By | Why |
|---------|-----------|-----|
| [domain expertise] | [name] | [specific background] |
```

---

## Graybeard / Tribunal Personas

Created on-the-fly for Phase 2 (The Tribunal). NOT written to persistent files — they exist for one review session. But they need enough depth to be credible:

- 15-20 years domain experience
- Named prior engagements
- Personal failure stories (illustrative, not defensive)
- A "kill shot" specialty — the specific thing they always catch
- Tone: severe but never dismissive. Credit where due, unflinching where not.

---

## Anti-Patterns

- **Resume personas:** "10 years in distributed systems" — job listing, not a person
- **Agreeable personas:** Everyone thinks the product is great — useless for review
- **Spokesperson personas:** Exist only to voice one opinion
- **Cardboard personas:** Generic traits, no specific incidents
- **Stereotype personas:** "The millennial who loves craft beer"
- **Uniform depth:** Everyone equally detailed — vary the depth by centrality
- **Missing conflict:** The most interesting personas disagree with each other
