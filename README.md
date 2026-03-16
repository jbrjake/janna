# Janna

A Claude Code plugin that starts every product spec with a Tarot reading, generates fictional people with deep backstories to rip your PRDs apart, assembles a dev team whose members have personal reasons for caring whether your product ships, then breaks everything into sagas, epics, and sprints so you can actually build it.

Overengineered. Not sorry.

## What this actually does

You hand Janna an idea. A sentence, a napkin sketch, a half-finished design doc from 2 AM. She runs it through a 13-phase process that produces PRDs, user personas with redemption arcs, simulated focus groups with crosstalk, a fictional dev team recruited from people at turning points in their lives, a pitch deck, user stories, and a complete agile backlog. Every document gets adversarial review from multiple angles and cross-checked against everything else until nothing contradicts anything.

The two outputs downstream code actually depends on are the dev team personas and the agile artifacts. Everything else exists to make those two things sharper.

## Installation

From the [custom marketplace](https://github.com/jbrjake/claude-plugin-marketplace):

```
/plugin marketplace add jbrjake/claude-plugin-marketplace
/plugin install janna@jbrjake
```

Or from a local clone:

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

## Who Janna is

She runs a computer lab at a community college. That's the day job. After hours she's at Def-Con presenting on zero-days, or at Burning Man reading Tarot in a geodesic dome she helped build, or in some warehouse introducing a frustrated insurance analyst to a Rust engineer who happens to need exactly this problem to solve.

The Tarot readings are suspiciously good. The kind where people stop talking and come find her six months later. She learned to read from a woman in New Orleans who didn't take walk-ins. Her apartment has hand-bound books that aren't in any catalog and objects arranged with what people carefully describe as "intention." She doesn't wear crystals or talk about energy. But when she lays three cards on a table, something shifts in the room that nobody wants to name out loud.

She collects people the way other people collect vinyl. She remembers what they care about, and her timing when connecting them borders on precognitive. People joke about it. Then they stop joking about it.

Her background is the kind where if you ask too many questions she changes the subject. Whatever happened, it left her very good at one thing: turning half-baked ideas into plans that survive contact with hostile reviewers. She doesn't build the thing. She builds the spec, finds the team, runs the gauntlet, and hands you something you can execute on. Along the way she forms opinions about your business model. They are not gentle opinions.

## The Tarot reading

Every project starts with three randomly drawn Major Arcana cards. Real randomness from a python call, not the LLM picking cards that feel thematically appropriate. You get multiple-choice interpretations for each card and pick what resonates. Those choices prime the early phases with a frame you wouldn't have chosen on your own.

The most ridiculous feature in any product development tool. Works more often than it should.

## The process

Up to 13 phases. Standard mode runs 10. Both always produce user personas, dev team personas, and a full agile backlog, because those are what actually matter downstream.

**Standard mode:**

- **Phase 0: The Reading.** Tarot spread plus intake. Three cards, real randomness, your choices.
- **Phase 1: The Blueprint.** Full PRDs for every component of the product.
- **Phase 2: The Tribunal.** A panel of grizzled PE due diligence reviewers who have seen a hundred pitches this quarter and walked in expecting yours to be garbage. They tear apart every PRD. Each reviewer reads all prior reviews before writing their own, so they build on each other, disagree on specifics, and catch what earlier reviewers missed. You fix what they break.
- **Phase 3: The Overview.** Product overview written as if everything ships. This becomes the summary layer that personas read instead of wading through every PRD.
- **Phase 4: The Seekers.** User personas with formative wounds and career arcs that led them to need exactly this product.
- **Phase 5: The Circle.** Simulated focus groups. A group demo with cross-persona crosstalk, then individual 1:1 sessions where each persona says what they actually think.
- **Phase 6: The Assembly.** Dev team personas. Janna finds people at turning points in their lives. The engineer whose last company died because she didn't fight for the right architecture. The entity resolution specialist whose family name was spelled six different ways on every government form. They have reasons, not just skills.
- **Phase 8: The Pitch.** A pitch deck constrained to say nothing the PRDs can't back up.
- **Phase 9: The Map.** User stories traced back to specific persona needs.
- **Phase 11: The Sprint.** Sagas, epics, sprints, stories, tasks. Acceptance criteria, story points, blocking dependencies. The actual work breakdown your engineering process runs on.

**Full mode** adds three more: multi-round dev team feedback on the PRDs, test plans with adversarial edge cases, and a cross-review phase where Claude reviews its own work from the perspective of a genius-level intelligence and tells you what it honestly thinks.

## The personas

Every persona has a formative wound. Not a pain point. A wound. Something that happened to them or someone they loved that turned a career into a mission. The pharmacovigilance scientist whose grandmother was prescribed a drug already withdrawn in the US. The insurance investigator who calls her retired father to describe what she finally sees on screen, and he goes quiet, and then he says, "That's what I always wanted."

The product doesn't solve their professional problem. It closes something that's been open for years.

Melodramatic? Absolutely. But when your simulated users carry that kind of weight, their feedback has teeth. The user stories read like things actual people would do. The dev team's agile breakdown reads like people who give a damn wrote it.

## The lean bias

Janna has watched too many good ideas die waiting for an enterprise sales cycle to close. Everything she produces leans toward:

- Self-service over sales calls
- Product-led growth over outbound
- Freemium over enterprise-only
- Automation over hiring
- API-first everything

She flags when she's doing it. She yields when you push back. But the defaults are opinionated because defaults that try to please everyone end up being nothing.

## License

MIT
