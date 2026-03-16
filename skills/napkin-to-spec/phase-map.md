# Phase Map — Quick Reference

## Phase Dependencies

```
Phase 0 (Reading) ──→ Phase 1 (Architecture) ──→ Phase 2 (Blueprint/PRD)
                                                        │
                                                        ├──→ Phase 3 (Cast/Personas)
                                                        │         │
                                                        │         ├──→ Phase 4 (Stories)
                                                        │         │         │
                                                        │         │         └──→ Phase 5 (Sprint/Agile)
                                                        │         │
                                                        │         └──→ Phase 8 (Review) ←── all phases
                                                        │
                                                        ├──→ Phase 6 (Gauntlet/Test Plan)
                                                        │
                                                        └──→ Phase 7 (Pitch)
```

## Phase I/O Summary

| Phase | Inputs | Outputs | Subagents Used |
|-------|--------|---------|----------------|
| 0 | Raw idea / design docs | `docs/design/00-design-kernel.md` | None |
| 1 | Design kernel | `docs/design/*.md` | spec-critic (Systems Architect, Pragmatic Engineer) |
| 2 | Design docs | `docs/prd/*.md` | spec-critic (Product Strategist, Customer, Security) |
| 3 | PRDs | `docs/dev-team/**`, `docs/user-stories/personas/**` | persona-weaver, spec-critic |
| 4 | Personas + PRDs | `docs/user-stories/*.md` | spec-critic (Customer, Pragmatic Engineer) |
| 5 | User stories + PRDs | `docs/agile/**` | spec-critic (Pragmatic Engineer) |
| 6 | PRDs + stories + arch | `docs/test-plan/*.md` | spec-critic (Systems Architect, Security) |
| 7 | All artifacts | `docs/overview.md`, `docs/pitch-deck/*.md` | spec-critic (Product Strategist, Customer) |
| 8 | All artifacts | Review reports, updates | All critics + dev team personas |

## Approval Gate Prompts

| Phase | Prompt to User |
|-------|---------------|
| 0 | "Here's what I understand you're building. Does this Design Kernel capture it?" |
| 1 | "Architecture documented. Does the technical foundation feel right before we move to requirements?" |
| 2 | "PRDs complete. These are the product requirements — anything missing, wrong, or over-specified?" |
| 3 | "Meet your team and your users. Do these feel like real people who'd actually work on / use this?" |
| 4 | "User stories written. Do these capture what your users actually need to do?" |
| 5 | "Sprint plan ready. Does the build order and timeline make sense?" |
| 6 | "Test plan complete. Are we testing the right things at the right depth?" |
| 7 | "Overview and pitch deck drafted. Does this tell the story you want to tell?" |
| 8 | "Cross-review complete. Everything aligns. Ready to build?" |

## Skill Invocation by Phase

| Phase | Primary Skill | Supporting Skills |
|-------|--------------|-------------------|
| 0 | napkin-to-spec | lean-product-strategy, (superpowers:brainstorming) |
| 1 | napkin-to-spec | document-forge, critique-loop |
| 2 | document-forge (PRD) | lean-product-strategy, critique-loop |
| 3 | persona-generation | document-forge (dev-team, user-persona), critique-loop |
| 4 | document-forge (stories) | critique-loop |
| 5 | document-forge (agile) | lean-product-strategy, critique-loop |
| 6 | document-forge (test-plan) | critique-loop |
| 7 | document-forge (overview, pitch) | lean-product-strategy, humanizer, critique-loop |
| 8 | critique-loop | all |

## Context Survival Checkpoints

Write `docs/JANNA-STATUS.md` after:
- Completing any phase
- Getting user approval at any gate
- Any course correction from the user
- Before any operation that might trigger context compaction

Read `docs/JANNA-STATUS.md` after:
- Any context compaction
- Resuming work in a new session
- User requests to continue previous work
