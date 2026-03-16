# Janna

A Claude Code plugin that turns napkin sketches into startup specs. Yes, it starts with a Tarot reading. No, we're not kidding.

## What this actually is

Janna is a product development engine disguised as a Claude Code plugin. You give it a rough idea, a design doc, a cocktail-napkin sketch, and it walks you through turning that into a complete product specification. PRDs, user personas, focus groups, a dev team, pitch decks, user stories, test plans, agile backlogs. The whole thing.

It's a lot. We know.

## The persona

Janna is a character. She runs a computer lab. She teaches. She also gives Tarot readings at Def-Con and somehow knows exactly the right engineer to introduce you to at a meetup. Her background is mysterious. Her network is improbable. She's very good at helping people figure out what they're actually building.

When Janna assembles your dev team, she finds people whose personal histories make them care about your product at a level that goes beyond professional pride. The entity resolution engineer whose family name was spelled six different ways on every document. The fraud investigator whose father spent 31 years seeing patterns he could never prove. These aren't window dressing. They drive the feedback your simulated team gives you, and that feedback is more useful because of it.

## The Tarot reading

Phase 0 starts with three randomly drawn Major Arcana cards. Actual randomness, via a python command, not the LLM picking cards that "seem appropriate." You choose how to interpret each card from multiple-choice options. The chosen interpretations color the early phases of product development. Not in any binding way. Just priming the pattern recognition. Finding symbolic resonance between ancient archetypes and whatever SaaS product you're trying to build.

It's either the most ridiculous thing a product development tool has ever done, or it's exactly the kind of lateral thinking that produces ideas you wouldn't have had otherwise. Possibly both.

## What happens after the cards

Janna runs you through up to 13 phases. You can choose Standard mode (7 phases) or Full mode (all 13). The minimum always includes personas, because Janna believes you can't build a product worth using without understanding who uses it and why they care.

The Standard path:

1. **The Reading.** Tarot plus intake. What are you building and why?
2. **The Blueprint.** Design expands into numbered PRDs.
3. **The Tribunal.** Grizzled PE due diligence reviewers tear your PRDs apart. They've seen a hundred pitches this quarter. They expect garbage. They tell you what's BS, what's missing, and what's actually good. Then you fix it.
4. **The Seekers.** User personas with formative wounds, redemption arcs, and emotional stakes that make focus group feedback hit different.
5. **The Circle.** Focus groups. Group demo first, then individual sessions where the real motivations come out.
6. **The Pitch.** A pitch deck that doesn't make promises the PRDs can't keep.
7. **The Map.** User stories that trace back to real persona needs.

The Full path adds: overview docs, a complete dev team with backstories, multiple rounds of team feedback, a test plan, an agile backlog with sagas and sprints, and a cross-review phase where everything checks everything else.

## The lean bias

Janna has opinions. Strong ones. She's watched too many good ideas die in enterprise sales cycles, so everything she produces leans hard toward:

- Self-service over sales calls
- Product-led growth over outbound
- Freemium over enterprise-only
- Automation over hiring
- API-first everything

She'll flag when she's applying these biases. She'll yield if you push back with good reason. But the defaults are opinionated, and that's the point.

## The graybeards

The Tribunal phase might be the most useful thing here. Janna assembles a panel of fictional PE due diligence reviewers, cynical and experienced and domain-specific, and has them tear your PRDs apart sequentially. Each reviewer reads all prior reviews before writing their own, so they build on each other's findings. The consolidated synthesis identifies where all reviewers converge (real problems), where they disagree (interesting trade-offs), and what they actually liked (your strengths).

Adversarial review as a service. Your PRDs come out better on the other side.

## The emotional depth thing

This is where it gets extra, and we own that.

Every persona, user or dev team, has a formative wound. Not a "pain point." A wound. A specific incident in their past that created their professional obsession. The supply chain analyst whose father said "We didn't know they were our only source" during a semiconductor crisis in 2006. The insurance investigator whose father spent 31 years seeing fraud patterns he could never prove.

The product doesn't solve their professional problem. It fills a hole in their heart.

This sounds dramatic. It is dramatic. It's also how the best products get built, by people who care about the problem at a level that goes beyond job satisfaction. When your simulated team cares this much, their feedback is sharper, their priorities are clearer, and the stories they generate feel more real.

Is it over the top? Absolutely. Does it produce better specs than "User A is a 35-year-old marketing manager"? We think so.

## Installation

```bash
claude --plugin-dir /path/to/janna
```

Or install from a marketplace if one is configured.

## Usage

```
/napkin                           # Start a new project (Full mode, auto-suggested)
/napkin standard my cool idea     # Standard mode with initial idea
/napkin full docs/design/arch.md  # Full mode with existing design doc
/janna-status                     # Check where you are in the process
```

## What's inside

6 skills, 4 agents, 2 commands.

The skills: using-janna (persona), napkin-to-spec (13-phase workflow), persona-generation (emotional depth), lean-product-strategy (opinionated GTM), document-forge (templates), critique-loop (review patterns).

The agents: spec-critic, persona-weaver, tribunal-reviewer, focus-group-facilitator.

The commands: `/napkin` (start) and `/janna-status` (check progress).

## License

MIT
