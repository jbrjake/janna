---
name: persona-generation
description: "Use when creating personas with deep backstories — dev team members, user personas, critic personas, or focus group participants. Triggers on: 'create personas', 'build a team', 'user profiles', 'who would use this', 'dev team', 'focus group'."
---

# Persona Generation

Create personas that are people, not cardboard cutouts. Every persona has a history that explains their opinions, blind spots, and strengths. This matters because personas drive user stories, dev feedback, and critique — shallow personas produce shallow artifacts.

## The Three Persona Types

### Dev Team Personas

Engineers, designers, PMs who will build the product. Used in Phase 3 (The Cast) and Phase 8 (The Review) for PRD critique.

**For each dev team member, generate:**

- **Identity:** Name, role, specialty, years of experience
- **Backstory (3-5 sentences):** Where they came from, what shaped their technical opinions, what they've shipped before, what burned them
- **Strengths:** What they catch that others miss
- **Blind spots:** What they tend to overlook or dismiss
- **Communication style:** How they give feedback (direct? diplomatic? snarky? thorough?)
- **Hot buttons:** Topics that make them push back hard

**Team composition rules:**
- At least one person who's been burned by over-engineering
- At least one person who's been burned by under-engineering
- At least one person focused on operations/reliability
- At least one person focused on UX/user advocacy
- At least one person focused on security
- Mix of senior and mid-level (no juniors — this is a startup)
- Diversity of background, education, industry experience

**Count:** 6-16 depending on product complexity. One per major PRD area minimum.

### User Personas

People who will use the product. Used in Phase 4 (The Stories) for user story generation.

**For each user persona, generate:**

- **Identity:** Name, role, organization type, industry
- **Backstory (3-5 sentences):** Career path, current challenges, what they've tried before, why existing solutions frustrate them
- **Goals:** What they're trying to accomplish (tied to the product's value prop)
- **Frustrations:** What's broken in their current workflow
- **Technical sophistication:** Scale of 1-5 with description
- **Adoption profile:** Early adopter? Pragmatist? Skeptic?
- **Willingness to pay:** What's the budget conversation like?
- **A day in their life:** One paragraph describing a typical workday, highlighting where the product fits

**Persona spread rules:**
- Cover the primary target market and one adjacent market
- Range of technical sophistication
- At least one power user, one casual user, one reluctant user
- At least one persona in a buying role (controls budget)

**Count:** 3-6 depending on market breadth.

### Critic Personas

Experts who review documents from specific angles. Used in janna:critique-loop. These are NOT generated as files — they're perspectives adopted by the critique agent.

**Standard critic perspectives:**
- **Systems Architect** — Scalability, data integrity, operational reality
- **Product Strategist** — Market fit, competitive positioning, GTM viability
- **Pragmatic Engineer** — Build cost, maintenance burden, "will this actually work?"
- **Security Engineer** — Attack surface, compliance, data handling
- **UX Advocate** — User cognitive load, onboarding friction, accessibility
- **The Customer** — "Would I actually pay for this? Would I switch from what I use now?"

## Backstory Generation Rules

**DO:**
- Ground backstories in specific experiences ("she spent three years at a fintech that..." not "she has experience in fintech")
- Give opinions that flow from experience ("after watching a migration take down prod for six hours, she now insists on...")
- Include something unexpected (a hobby, a side project, an unusual career transition)
- Make blind spots the flip side of strengths

**DO NOT:**
- Generate stereotypical personas (the "millennial who loves craft beer")
- Make everyone agreeable — some personas should have friction with each other
- Write backstories that are just resumes
- Create personas that are mouthpieces for a single viewpoint
- Use the names of real public figures

## Output Format

### Dev Team Profile

```markdown
# [Name] — [Role]

**Specialty:** [area]
**Experience:** [N] years
**Previously:** [1-2 notable prior roles]

## Backstory

[3-5 sentences grounding their perspective in specific experience]

## As a Reviewer

**Catches:** [what they're good at spotting]
**Misses:** [what they tend to overlook]
**Style:** [how they communicate feedback]
**Hot buttons:** [topics that trigger strong opinions]

## Character Notes

[For agents playing this persona in feedback sessions: voice patterns, pet phrases,
how they start sentences, what makes them interrupt, how they disagree with peers.
This is the actor's script — enough detail to improvise in-character during critique rounds.]
```

### User Persona Profile

```markdown
# [Name] — [Role] at [Organization Type]

**Industry:** [industry]
**Technical Level:** [1-5] — [description]
**Adoption Profile:** [early adopter / pragmatist / skeptic]

## Backstory

[3-5 sentences]

## Goals

- [specific goal tied to product]
- [specific goal tied to product]

## Frustrations

- [specific frustration with current workflow]
- [specific frustration with current workflow]

## A Day in Their Life

[One paragraph describing typical workday, highlighting where the product fits]

## Willingness to Pay

[1-2 sentences on budget reality]
```

## Integration with Other Phases

- **Phase 2 (Blueprint):** Personas inform PRD priority — features that serve the buying persona get higher priority
- **Phase 4 (Stories):** Each user persona generates 5-15 user stories
- **Phase 8 (Review):** Dev team personas critique PRDs; user personas validate stories
- **janna:critique-loop:** Critic personas provide the review perspectives
