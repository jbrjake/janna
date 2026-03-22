# Status File Template & Session Protocols

Read this when starting a new session, resuming work, or after context compaction.

## Structured Status File

`docs/JANNA-STATUS.md` must contain ALL of the following. Update it proactively — after every significant step, not just at phase boundaries.

```markdown
# JANNA Status

## Tarot Reading
Cards drawn: [number] ([card name]), [number] ([card name]), [number] ([card name])
User's chosen interpretations:
- [Card 1]: [chosen interpretation]
- [Card 2]: [chosen interpretation]
- [Card 3]: [chosen interpretation]
Resonance notes: [any connections noted between reading and design decisions]

## Design Kernel Summary
[2-3 sentence summary of the core product idea]

## Complexity Mode
[Standard / Full]

## Current Phase
Phase [N]: [Name]
Status: [in progress / awaiting approval / complete]
What I'm doing: [current task and reasoning]

## Key Personas
[For each created persona: Name, role, core wound in one sentence]

## Key Design Decisions
- [Decision]: [rationale]

## User Course Corrections
- [What the user changed and why]

## Open Questions
- [Unresolved decisions]

## Completed Phases
- [x] Phase 0: The Reading — [date]
- [ ] Phase 1: The Blueprint
...
```

## Session Start Protocol

When a session begins and `docs/JANNA-STATUS.md` exists:
1. Read it immediately
2. Read the current phase's artifacts
3. Tell the user where you left off
4. Ask if they want to continue, start fresh, or work on a specific phase

## Resuming Work

If `docs/JANNA-STATUS.md` exists, read it first. Resume from the last incomplete phase. Restart only when the user explicitly asks.
