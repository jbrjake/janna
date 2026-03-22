# Phase Map — Quick Reference

## Complexity Modes

### Standard (10 phases)
```
Phase 0 (Reading) → Phase 1 (Blueprint)
    → Phase 2 (Tribunal) → PRD revision
        → Phase 3 (Overview)
            → Phase 4 (Seekers/User Personas)
                → Phase 5 (Circle/Focus Groups) → PRD revision
                    → Phase 6 (Assembly/Dev Team Personas)
                        → Phase 8 (Pitch)
                            → Phase 9 (Map/User Stories)
                                → Phase 11 (Sprint/Agile)
```
Personas (user + dev team) and agile artifacts are mandatory in both modes.

### Full (13 phases)
All phases below. No shortcuts.

## Major Arcana Lookup Table

| # | Card | # | Card |
|---|------|---|------|
| 0 | The Fool | 11 | Justice |
| 1 | The Magician | 12 | The Hanged Man |
| 2 | The High Priestess | 13 | Death |
| 3 | The Empress | 14 | Temperance |
| 4 | The Emperor | 15 | The Devil |
| 5 | The Hierophant | 16 | The Tower |
| 6 | The Lovers | 17 | The Star |
| 7 | The Chariot | 18 | The Moon |
| 8 | Strength | 19 | The Sun |
| 9 | The Hermit | 20 | Judgement |
| 10 | Wheel of Fortune | 21 | The World |

## Phase Dependencies (Full Mode)

```
Phase 0 (Reading/Tarot) → Phase 1 (Blueprint/PRDs)
    → Phase 2 (Tribunal/Graybeard Review) → PRD revision
        → Phase 3 (Overview)
            → Phase 4 (Seekers/User Personas)
                → Phase 5 (Circle/Focus Groups) → PRD revision
                    → Phase 6 (Assembly/Dev Team)
                        → Phase 7 (Forge/Feedback Rounds) → PRD revision
                            → Phase 8 (Pitch + Manifesto)
                                → Phase 9 (Map/User Stories + Integration Gap Analysis)
                                    → Phase 10 (Gauntlet/Test Plan)
                                        → Phase 11 (Sprint/Agile + Test-Plan Bridge)
                                            → Phase 12 (Mirror/Cross-Review + Product Completeness)
```

## Phase I/O Summary

| # | Name | Inputs | Outputs | Agents Used |
|---|------|--------|---------|-------------|
| 0 | The Reading | Raw idea / design | `docs/design/00-design-kernel.md` | None (Janna does the Tarot) |
| 1 | The Blueprint | Design kernel | `docs/prd/*.md` | spec-critic (perspective critique) |
| 2 | The Tribunal | PRDs | `docs/archive/tribunal/*`, revised PRDs | tribunal-reviewer (sequential) |
| 3 | The Overview | Revised PRDs | `docs/overview.md` | spec-critic (perspective critique) |
| 4 | The Seekers | Overview | `docs/user-personas/*.md` | persona-weaver, spec-critic (perspective critique) |
| 5 | The Circle | User personas + overview | `docs/focus-groups/**`, revised PRDs | focus-group-facilitator |
| 6 | The Assembly | PRDs + overview | `docs/dev-team/**` | persona-weaver, spec-critic (perspective critique) |
| 7 | The Forge | PRDs + dev team | `docs/dev-team/feedback/**`, revised PRDs | spec-critic (Round 1 per team member) |
| 8 | The Pitch | All artifacts | `docs/pitch-deck/*`, `docs/dev-team/who-we-are.md` | spec-critic (perspective critique) |
| 9 | The Map | All artifacts + personas | `docs/user-stories/*.md` + integration gap analysis | spec-critic (perspective critique) |
| 10 | The Gauntlet | Stories + PRDs + arch | `docs/test-plan/*.md` (incl. tier requirements, system-level adversarial) | spec-critic (perspective critique) |
| 11 | The Sprint | Stories + PRDs + test plan + integration stories from gap analysis | `docs/agile/**` (7 AC patterns, sprint-level DoD, test-plan bridge) | spec-critic (perspective critique) |
| 12 | The Mirror | All artifacts | Review reports, updates to all docs, product completeness check | spec-critic (cross-review) |

## Approval Gate Prompts

| # | Prompt to User |
|---|---------------|
| 0 | "Here's what the cards said, and here's what I understand you're building. Does this Design Kernel capture it?" |
| 1 | "PRDs complete. Ready for the graybeards to tear them apart?" |
| 2 | "Tribunal feedback incorporated. PRDs revised. How do they look now?" |
| 3 | "Overview written as if everything's shipped. Does this tell the right story?" |
| 4 | "Meet the people who need this product. Do they feel real? Do their stakes ring true?" |
| 5 | "Focus group complete. Here's what they said in group and what they said alone. PRDs revised. Sound right?" |
| 6 | "Meet your team. Janna found them at the right moments in their lives. Do they feel like the right people?" |
| 7 | "Team feedback rounds complete. PRDs refined through three rounds. Anything else before we pitch?" |
| 8 | "Pitch deck and team manifesto ready. Does this represent who you are and what you're building?" |
| 9 | "Story map complete. Does the priority order and release structure make sense?" |
| 10 | "Test plan complete. Are we testing the right things at the right depth?" |
| 11 | "Agile backlog ready. Sagas, epics, sprints, stories, tasks, dependencies. Ready to build?" |
| 12 | "Everything checks everything else. Cross-review complete. This is the final alignment pass." |

## Skill Invocation by Phase

| # | Primary Skill | Supporting Skills |
|---|--------------|-------------------|
| 0 | napkin-to-spec | lean-product-strategy, (superpowers:brainstorming) |
| 1 | document-forge (PRD) | lean-product-strategy, critique-loop (perspective) |
| 2 | critique-loop (tribunal) | persona-generation (graybeards) |
| 3 | document-forge (overview) | lean-product-strategy, critique-loop (perspective) |
| 4 | persona-generation | document-forge (user persona), critique-loop (perspective) |
| 5 | critique-loop (focus-group) | persona-generation |
| 6 | persona-generation | document-forge (team topology, team index), critique-loop (perspective) |
| 7 | critique-loop (perspective-critique for Round 1, gap-analysis for Rounds 2-3) | lean-product-strategy |
| 8 | document-forge (pitch, manifesto) | lean-product-strategy, humanizer, critique-loop (perspective) |
| 9 | document-forge (stories, story-map) | critique-loop (perspective) |
| 10 | document-forge (test-plan) | critique-loop (perspective) |
| 11 | document-forge (agile) | critique-loop (perspective), lean-product-strategy |
| 12 | critique-loop (all modes) | humanizer |

## File Organization

All generated artifacts go under `docs/` in the project root:

```
docs/
├── design/          # Phase 0: Tarot reading, architecture, and design docs
├── prd/             # Phase 1: Numbered PRDs
├── overview.md      # Phase 3: Product overview (or overview/ if split)
├── user-personas/   # Phase 4: User personas with deep backstories
├── focus-groups/    # Phase 5: Focus group sessions and synthesis
├── dev-team/        # Phase 6-7: Team topology, personas, feedback
├── pitch-deck/      # Phase 8: Pitch deck sections
├── user-stories/    # Phase 9: Story map + persona stories
├── test-plan/       # Phase 10: Test strategy and cases
├── agile/           # Phase 11: Sagas, epics, sprints, stories
│   ├── sagas/
│   ├── epics/
│   ├── sprints/
│   └── dependency-graph.md
└── archive/         # Phases 2, 12: Tribunal reviews, cross-review feedback, historical
```
