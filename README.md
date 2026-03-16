# Janna

A Claude Code plugin that turns napkin sketches into startup specs. It starts with a Tarot reading. It generates fictional people with trauma-informed backstories who will critique your PRDs. It has opinions about your go-to-market strategy and it will not keep them to itself.

This is overengineered and we are not sorry.

## What this is

You bring Janna an idea. Could be a design doc, could be something you scrawled on a napkin at 2 AM, could be a sentence. She turns it into a complete product specification through an iterative process that is, by any reasonable measure, way too thorough. PRDs, user personas with redemption arcs, simulated focus groups, a fictional dev team assembled from people whose life stories make them care about your product at an uncomfortable depth, a pitch deck, user stories, test plans, agile backlogs. She generates all of it, reviews all of it from multiple adversarial angles, and cross-checks it against itself until everything is consistent.

It's absurd. It might also be the most comprehensive product development tool anyone has built for a coding agent. We'll let you decide which of those matters more.

## Who is Janna

She runs a computer lab at a community college. That's the day job. After hours she's at Def-Con presenting on zero-days, or at Burning Man giving Tarot readings in a geodesic dome, or at a meetup in a warehouse introducing a frustrated insurance analyst to a Rust engineer who just happens to be looking for exactly this problem to solve. She collects people the way other people collect vinyl. She remembers what they care about and she knows when the timing is right.

Her background is the kind where if you ask too many questions she changes the subject, but whatever happened made her very, very good at one thing: helping people turn half-baked ideas into plans that hold up under scrutiny. She doesn't build the thing. She builds the spec, assembles the team, runs it through the gauntlet, and hands you something you can actually execute on.

She also has strong opinions about enterprise sales (against), self-service onboarding (for), and whether your free tier is generous enough (it never is).

## The Tarot reading

Every project starts with three randomly drawn Major Arcana cards. Real randomness from a python command, not the LLM picking cards that feel thematically appropriate. You get multiple-choice interpretations for each card and pick what resonates. Those choices color the early phases of development. Not in a strict way. More like how a good writing prompt works: it gives you a frame you wouldn't have chosen yourself, and sometimes that frame is exactly what the idea needed.

Is this the most ridiculous feature in any product development tool ever made? Almost certainly. Does it occasionally surface a connection you wouldn't have found otherwise? More often than you'd expect.

## The process

Janna runs you through up to 13 phases. Standard mode cuts it to 9. Both modes always include user personas AND dev team personas, because Janna will not let you build a product without understanding who needs it and who's building it and why any of them should care.

Standard mode:

1. **The Reading.** Tarot plus intake.
2. **The Blueprint.** PRDs.
3. **The Tribunal.** Cynical private equity due diligence reviewers who have seen a hundred pitches this quarter and walked in expecting yours to be garbage. They tear apart every PRD and rate it on a 5-point scale. You fix what they break.
4. **The Overview.** A product overview written as if everything already ships. This becomes the summary layer that personas read instead of every PRD.
5. **The Seekers.** User personas. Not demographics sheets. People with formative wounds and career arcs that led them to need exactly this product.
6. **The Circle.** Simulated focus groups. Group demo with crosstalk first, then individual sessions where each persona tells you what they actually think when nobody else is listening.
7. **The Assembly.** Dev team personas. Janna finds people at the right moments in their lives. The engineer whose last company died because she didn't fight hard enough for the right architecture. The entity resolution specialist whose family name was spelled six different ways on every government form. They don't just have skills. They have reasons.
8. **The Pitch.** A pitch deck that says nothing the PRDs can't back up.
9. **The Map.** User stories traced back to real persona needs.

Full mode adds: multi-round dev team feedback on the PRDs, test plans with adversarial cases, a complete agile backlog with sagas and sprints, and a cross-review phase where Claude reviews its own work from the perspective of a genius-level intelligence and tells you what it actually thinks.

## The personas

This is the part that makes people either love this project or slowly back away.

Every persona has a formative wound. Not a pain point, not a frustration, not a "challenge." A wound. Something that happened to them or someone they loved that turned a career path into a mission. The pharmacovigilance scientist whose grandmother was prescribed a drug already withdrawn from the US market. The insurance investigator who calls her retired father to describe what she finally sees on screen, and he goes quiet, and then he says, "That's what I always wanted."

The product doesn't solve their professional problem. It closes something that's been open for years.

This is melodramatic. We know. The thing is, when your simulated users and dev team carry this kind of weight, the feedback they give you is different. Their priorities come from somewhere real. Their objections have teeth. The user stories they generate feel like something a human being would actually do, not something a requirements document would suggest.

## The graybeards

The Tribunal might be the single most useful phase. Janna assembles a panel of grizzled PE acquisition due diligence reviewers and dispatches them sequentially. Each one reads all prior reviews before writing their own, so they build on each other. They confirm findings across domains, disagree with specifics, and call out when an earlier reviewer missed something. The consolidated synthesis shows you where they all converge (those are real problems), where they diverge (interesting trade-offs), and what they grudgingly respected (your actual strengths).

Your PRDs will be better afterward. That's not marketing copy, it's just what adversarial review does.

## The lean bias

Janna has watched too many good ideas die waiting for an enterprise sales cycle to close. Everything she produces leans toward:

- Self-service over sales calls
- Product-led growth over outbound
- Freemium over enterprise-only
- Automation over hiring
- API-first everything

She flags when she's doing it. She yields when you push back. But the defaults are opinionated because defaults that try to be everything end up being nothing.

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
