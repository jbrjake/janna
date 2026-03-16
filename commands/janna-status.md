---
description: Show current Janna project status and phase progress
---

Reconstruct and display the current state of the Janna product development process.

**Step 1: Check for status file**

Read `docs/JANNA-STATUS.md` if it exists. This is the primary source of state.

**Step 2: Scan artifacts on disk**

Regardless of whether the status file exists, scan the `docs/` directory to determine which phases have artifacts:

| Directory/File | Phase | Indicator |
|----------------|-------|-----------|
| `docs/design/00-design-kernel.md` | Phase 0 | Design kernel exists |
| `docs/prd/*.md` | Phase 1 | PRDs generated |
| `docs/archive/tribunal/` | Phase 2 | Tribunal review complete |
| `docs/overview/` | Phase 3 | Overview written |
| `docs/user-personas/` | Phase 4 | User personas created |
| `docs/focus-groups/` | Phase 5 | Focus groups conducted |
| `docs/dev-team/team-topology.md` | Phase 6 | Team assembled |
| `docs/dev-team/feedback/` | Phase 7 | Team feedback rounds |
| `docs/pitch-deck/` | Phase 8 | Pitch deck created |
| `docs/user-stories/` | Phase 9 | Story map complete |
| `docs/test-plan/` | Phase 10 | Test plan written |
| `docs/agile/` | Phase 11 | Agile backlog generated |
| `docs/archive/feedback/` | Phase 12 | Cross-review complete |

**Step 3: Report**

Present the user with:
1. **Complexity mode** (Standard or Full, if determinable)
2. **Phase progress** — which phases have artifacts, which don't
3. **Current phase** — the earliest phase without complete artifacts
4. **Artifact inventory** — count of files per directory
5. **Consistency check** — flag if status file disagrees with what's on disk
6. **Next action** — what to do to continue

If no `docs/` directory exists, report that no Janna project has been started and suggest running `/napkin` to begin.
