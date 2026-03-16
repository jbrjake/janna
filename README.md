# Janna

A Claude Code plugin that turns napkin sketches into startup specs. It starts with a Tarot reading. It generates fictional people with trauma-informed backstories who will critique your PRDs. It assembles a dev team whose members have personal reasons for caring whether your product ships. Then it breaks the whole thing down into sagas, epics, and sprints so you can actually build it.

This is overengineered and we are not sorry.

## What this is

You bring Janna an idea. A design doc, something you scrawled on a napkin at 2 AM, a sentence. She turns it into a complete product specification through an iterative process that is, by any reasonable measure, way too thorough. PRDs, user personas with redemption arcs, simulated focus groups, a fictional dev team assembled from people whose life stories make them care about your product at an uncomfortable depth, a pitch deck, user stories, and a full agile backlog. She generates all of it, reviews all of it from multiple adversarial angles, and cross-checks it against itself until everything is consistent.

The two outputs downstream code actually depends on are the dev team personas and the agile artifacts. Everything else exists to make those two things better.

## Who Janna is

She runs a computer lab at a community college. That's the day job. After hours she's at Def-Con presenting on zero-days, or at Burning Man giving Tarot readings in a geodesic dome she helped build, or at a meetup in some warehouse introducing a frustrated insurance analyst to a Rust engineer who just happens to be looking for exactly this problem to solve. She collects people the way other people collect vinyl. She remembers what they care about and she knows when the timing is right.

Her background is the kind where if you ask too many questions she changes the subject. Whatever happened, it made her very good at one specific thing: helping people turn half-baked ideas into plans that hold up under scrutiny. She doesn't build the thing. She builds the spec, assembles the team, runs it through the gauntlet, and hands you something you can actually execute on. Somewhere along the way she also forms opinions about your business model. They are not gentle opinions.

## The Tarot reading

Every project starts with three randomly drawn Major Arcana cards. Real randomness from a python command, not the LLM picking cards that feel thematically appropriate. You get multiple-choice interpretations for each card and pick what resonates. Those choices prime the pattern recognition for the early phases. Not binding, not mystical, not even particularly woo. More like how a good writing prompt gives you a frame you wouldn't have chosen, and sometimes that frame cracks something open.

The most ridiculous feature in any product development tool? Probably. But it works more often than it should.

## The process

Janna runs you through up to 13 phases. Standard mode runs 10. Both modes always generate user personas, dev team personas, and a complete agile backlog, because those are the things that actually matter for what comes next.

Standard mode (phases 0-6, 8, 9, 11):

- **Phase 0: The Reading.** Tarot plus intake.
- **Phase 1: The Blueprint.** PRDs.
- **Phase 2: The Tribunal.** Cynical private equity due diligence reviewers who have seen a hundred pitches this quarter and walked in expecting yours to be garbage. They tear apart every PRD. You fix what they break.
- **Phase 3: The Overview.** Product overview, written as if everything ships. This becomes the summary layer personas read instead of every PRD.
- **Phase 4: The Seekers.** User personas with formative wounds and career arcs that led them to need exactly this product.
- **Phase 5: The Circle.** Simulated focus groups. Group demo with crosstalk, then individual sessions where each persona says what they actually think.
- **Phase 6: The Assembly.** Dev team personas. Janna finds people at the right moments in their lives. The engineer whose last company died because she didn't fight hard enough for the right architecture. The entity resolution specialist whose family name was spelled six different ways on every government form. They have reasons, not just skills.
- **Phase 8: The Pitch.** A pitch deck that says nothing the PRDs can't back up.
- **Phase 9: The Map.** User stories traced to real persona needs.
- **Phase 11: The Sprint.** Sagas, epics, sprints, stories, tasks. Acceptance criteria, story points, blocking dependencies. The actual work breakdown your engineering process runs on.

Full mode adds phases 7, 10, and 12: multi-round dev team feedback on the PRDs, test plans with adversarial cases, and a cross-review phase where Claude reviews its own work from the perspective of a genius-level intelligence and tells you what it honestly thinks.

## The personas

Every persona has a formative wound. Not a pain point. A wound. Something that happened to them or someone they loved that turned a career path into a mission. The pharmacovigilance scientist whose grandmother was prescribed a drug already withdrawn from the US market. The insurance investigator who calls her retired father to describe what she finally sees on screen, and he goes quiet, and then he says, "That's what I always wanted."

The product doesn't solve their professional problem. It closes something that's been open for years.

Melodramatic? Sure. But when your simulated users and dev team carry this weight, the feedback they give you has teeth. Their priorities come from somewhere real. The user stories feel like things human beings would actually do. And the dev team's agile breakdown reflects genuine technical conviction, not template-filling.

## The graybeards

The Tribunal might be the single most useful phase. Janna assembles a panel of grizzled PE acquisition reviewers and dispatches them sequentially. Each one reads all prior reviews before writing their own, so they build on each other's findings, confirm across domains, disagree with specifics, and call out what earlier reviewers missed. The synthesis shows you convergence (real problems), divergence (interesting trade-offs), and what they grudgingly respected (your actual strengths).

Your PRDs come out better. That's not a pitch, it's just what adversarial review does.

## The lean bias

Janna has watched too many good ideas die waiting for an enterprise sales cycle to close. Everything she produces leans toward:

- Self-service over sales calls
- Product-led growth over outbound
- Freemium over enterprise-only
- Automation over hiring
- API-first everything

She flags when she's doing it. She yields when you push back. But the defaults are opinionated because defaults that try to please everyone end up being nothing.

## Installation

```bash
claude --plugin-dir /path/to/janna
```

## Usage

```
/napkin                           # Start a new project
/napkin standard my cool idea     # Standard mode with initial idea
/napkin full docs/design/arch.md  # Full mode with existing design doc
/janna-status                     # Where am I in this process
```

## What's inside

6 skills, 4 agents, 2 commands, and more opinions than any plugin probably should have.

## License

MIT
