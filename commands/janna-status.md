---
description: Show current Janna project status and phase progress
---

Reconstruct and display the current state of the Janna product development process.

**Step 1: Check for status file**

Read `docs/JANNA-STATUS.md` if it exists. This is the primary source of state, including the complexity mode (Standard or Full).

**Step 2: Scan artifacts on disk**

Regardless of whether the status file exists, scan the `docs/` directory to determine which phases have artifacts:

| Artifact | Phase | Indicator |
|----------|-------|-----------|
| `docs/design/00-design-kernel.md` | Phase 0 | Design kernel exists |
| `docs/prd/*.md` | Phase 1 | PRDs generated |
| `docs/archive/tribunal/` | Phase 2 | Tribunal review complete |
| `docs/overview.md` (or `docs/overview/`) | Phase 3 | Overview written |
| `docs/user-personas/` | Phase 4 | User personas created |
| `docs/focus-groups/` | Phase 5 | Focus groups conducted |
| `docs/dev-team/team-topology.md` | Phase 6 | Team assembled |
| `docs/dev-team/feedback/round-*` | Phase 7 (Full only) | Team feedback rounds |
| `docs/pitch-deck/` | Phase 8 | Pitch deck created |
| `docs/user-stories/` | Phase 9 | Story map complete |
| `docs/test-plan/` | Phase 10 (Full only) | Test plan written |
| `docs/agile/` | Phase 11 | Agile backlog generated |
| `docs/dev-team/feedback/cross-review/` or `docs/archive/feedback/` | Phase 12 (Full only) | Cross-review complete |

**Step 3: Determine complexity mode**

If the status file specifies Standard or Full, use that. Otherwise infer:
- If Phase 7, 10, or 12 artifacts exist, the project is in Full mode.
- If those are absent but Phases 0-6, 8, 9, 11 exist, the project is in Standard mode.

**Step 4: Report**

Present the user with:
1. **Complexity mode** (Standard or Full)
2. **Phase progress** — which phases have artifacts, which don't (skip Full-only phases if in Standard mode)
3. **Current phase** — the earliest phase in the active mode without complete artifacts
4. **Artifact inventory** — count of files per directory
5. **Consistency check** — flag if status file disagrees with what's on disk
6. **Next action** — what to do to continue

If no `docs/` directory exists, report that no Janna project has been started and suggest running `/napkin` to begin.
