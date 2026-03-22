---
name: critique-loop
description: "Use when reviewing documents, running adversarial reviews, conducting focus groups, or checking cross-document alignment. Triggers on: 'review this', 'critique', 'focus group', 'tribunal', 'graybeard review', 'gap analysis', 'alignment check', 'what's missing'."
---

**Skill type: RIGID** — Follow exactly. Do not adapt, skip, or reorder steps.

# Critique Loop

Six modes of review, from quick self-check to full adversarial tribunal. Every generated artifact goes through at least one. Major artifacts get multiple rounds from different angles.

## Mode Selection

```dot
digraph mode_selection {
    rankdir=TB
    node [shape=box]
    "What is being reviewed?" [shape=diamond];
    "Single artifact just generated" [shape=box] -> "Mode 1: Quick Critique";
    "Phase transition" [shape=box] -> "Mode 2: Perspective Critique";
    "PRD suite (Phase 2)" [shape=box] -> "Mode 3: Tribunal";
    "User personas + overview (Phase 5)" [shape=box] -> "Mode 4: Focus Group";
    "Docs from product leadership (Phase 7)" [shape=box] -> "Mode 5: Gap Analysis";
    "All artifacts (Phase 12)" [shape=box] -> "Mode 6: Cross-Review";

    "What is being reviewed?" -> "Single artifact just generated";
    "What is being reviewed?" -> "Phase transition";
    "What is being reviewed?" -> "PRD suite (Phase 2)";
    "What is being reviewed?" -> "User personas + overview (Phase 5)";
    "What is being reviewed?" -> "Docs from product leadership (Phase 7)";
    "What is being reviewed?" -> "All artifacts (Phase 12)";
}
```

## The Six Modes

### 1. Quick Critique (per-artifact)

After generating any single document, run a quick self-review:
- Matches janna:document-forge template?
- Cross-references valid?
- Terminology consistent with existing artifacts?
- Lean strategy applied where relevant?
- Specific language only (no "various", "etc.", "as needed")?

Fix inline. No separate output needed.

### 2. Perspective Critique (per-phase)

At phase transitions, dispatch the **spec-critic** agent (with `context: fork`) adopting specific expert perspectives. Forked context ensures reviewers see only the artifact and spec — not session history that would bias their review:

| Phase | Perspectives |
|-------|-------------|
| 1 (Blueprint) | Systems Architect, Pragmatic Engineer |
| 3 (Overview) | Product Strategist, UX Advocate |
| 4 (Seekers) | UX Advocate, The Customer (are personas diverse, grounded, and representing real needs?) |
| 6 (Assembly) | UX Advocate (are personas diverse and grounded?) |
| 8 (Pitch) | Product Strategist, The Customer |
| 9 (Map) | The Customer, Pragmatic Engineer |
| 10 (Gauntlet) | Systems Architect, Security Engineer |
| 11 (Sprint) | Pragmatic Engineer (are sprints realistic?), Systems Integrator (does the backlog produce a working product?) |

Standard critique output: Location → Issue → Severity → Suggestion.

### 3. Tribunal Mode (Phase 2)

**The grizzled graybeards.** Private equity acquisition due diligence reviewers. They've assessed a hundred companies this quarter. They walk in expecting a total nothingburger.

**Setup:**
- Generate 4-6 graybeard personas on the fly using janna:persona-generation tribunal rules
- Each has a specialty: infrastructure, data engineering, frontend/UX, enterprise product, security/ops, architecture
- 15-20 years experience each, named prior engagements, personal failure stories
- **Sequential dispatch with crosstalk:** Dispatch reviewers one at a time. Each reviewer reads the original PRDs PLUS all prior reviewers' outputs before producing their own review. Later reviewers naturally react to earlier findings — confirming, challenging, or extending them. After all have spoken, produce a consolidated synthesis capturing convergence, divergence, and cross-panel patterns.

**Per-PRD Teardown:**
```markdown
## PRD-NN: [Area Name]

### What is good
[Genuine credit — specific, not generic]

### What is BS
[Specific false claims with technical reasoning. "REQ-XXX-NNN claims X.
This is false because Y. The actual constraint is Z."]

### What is missing
[Gaps in specification. What would a developer need to ask?]

### Risk Rating: [1-5]/5
[Brief justification. 1/5 = solid, proceed with confidence. 2/5 = manageable, fixable gaps.
3/5 = significant concerns. 4/5 = high risk, fundamental issues. 5/5 = unworkable.]
```

**Consolidated Synthesis:**
```markdown
## Tribunal Synthesis

### Panel Verdict
[Single unified conclusion]

### Unanimous Kill Shots
[Only findings ALL reviewers independently identified]

### Domain-Specific Kill Shots
[Per-specialty critical issues]

### Cross-Panel Crosstalk
[Where reviewers converge on patterns]

### What the Panel Liked
[Credit where due — prevents credibility destruction]

### Risk Ratings by PRD
| PRD | Rating | Key Risk |
|-----|--------|----------|

### Bottom Line
[Clear thesis. Actionable.]
```

**Tone:** Severe but never dismissive. Grant credit frequently. Be specific about claimed experience. Distinguish "impossible" from "difficult but doable." Propose 2-3 remediation options.

### 4. Focus Group Mode (Phase 5)

**Two sub-modes, run in sequence:**

#### Group Demo Session
- Janna acts as sales engineer demoing the product
- **Sequential dispatch with crosstalk:** Dispatch each persona one at a time. Each reads the overview (not the full PRDs) PLUS all prior personas' reactions before producing their own response. The overview is the summary layer. Later personas react to what earlier ones said, creating organic group dynamics.
- Press them: what would make it more valuable? What would guarantee annual payment?
- Let them debate with each other — cross-persona validation
- Capture the group dynamics — what emerges from conversation, not from scripted positioning

**Output:**
```markdown
## Focus Group — Group Session

### Demo Walkthrough
[What was shown, reactions at each step]

### Cross-Persona Themes
[What multiple personas independently identified]

### Purchase Triggers
[What would make each persona commit to annual payment]

### Debates
[Where personas disagreed and what that reveals about the product]
```

#### Individual 1:1 Sessions
- Each persona separately, one at a time
- What they couldn't say in group — the personal stories, the real motivations
- What the product means to them at the level of identity, not efficiency
- The formative wound surfaces here, not in group

**Output per persona:**
```markdown
## [Name] — Individual Session

### What They Said in Group vs. Alone
[The delta is the most valuable signal]

### Personal Stake
[Why this product matters to them beyond their job]

### Specific Feature Requests
[Grounded in their personal workflow and motivation]

### Deal Breakers
[What would prevent adoption]

### The Moment They Got Quiet
[The emotional core — when they stopped evaluating and started hoping]
```

#### Focus Group Synthesis
```markdown
## Focus Group Synthesis

### Tier 1: Adoption Blockers (cross-persona consensus)
- [finding] — raised by [N] of [N] personas

### Tier 2: Market Expansion Opportunities
- [finding] — raised by [personas]

### Tier 3: Domain-Specific Enhancements
- [finding] — raised by [persona]

### Individual Session Insights
[What emerged in 1:1s that didn't surface in group]

### Actionable Changes to PRD
- [ ] [specific change] — source: [persona(s)]
```

### 5. Gap Analysis Mode (Phase 7, Rounds 2-3)

Product leadership personas review all docs asking: "What ISN'T documented but is necessary to achieve the product strategy?"

**Setup:** Assemble the personas responsible for GTM, product ownership, and customer success (by role, not by exact name — match to actual Phase 6 personas).

**Round 2 focus:** General gaps — what's missing?
**Round 3 focus:** Self-service gaps — "What's missing to make this completely turnkey with no humans on the sales side?"

**Output per round:**
```markdown
## Gap Analysis — Round [2 or 3]

### [Persona Name]

#### Missing Documentation
- [gap] — why it matters for product success

#### Missing PRD Coverage
- [gap] — which PRD should own this

#### Missing GTM Coverage
- [gap] — impact on self-service funnel

### Action Items
- [ ] [specific new doc or PRD section needed]
```

### 6. Cross-Review Mode (Phase 12)

Full alignment audit across the entire artifact set. Three sub-steps:

1. **Full team cross-review:** Dispatch each dev team persona sequentially using the **spec-critic** agent (with `context: fork`, using the persona's name and specialty as the perspective), each reviewing documents outside their primary area. Write to `docs/dev-team/feedback/cross-review/`.
2. **Cross-document tracing:** Verify every PRD requirement maps to a user story, every story maps to an agile task, every task has test coverage. Flag orphans.
3. **AI self-review:** Review the entire spec corpus from your own perspective. What would make this more interesting, more internally consistent, more complete? Write to `docs/archive/feedback/`.
4. **System integration check:** Dispatch the spec-critic agent as **Systems Integrator** to review the complete backlog, asking: "If every story in this backlog were implemented exactly as specified, would the result be a working product that a user can launch and operate?" Flag any gap where stories pass individually but the assembled product would fail — missing wiring, incompatible interfaces, no story covering the path from entry point to visible output.

---

## The Iteration Protocol

Every critique mode follows the same loop:

```
Run critique → Categorize by severity → Present Critical+Important to user →
User decides per issue: fix | accept | defer → Apply fixes →
Re-run on changed sections only → If no new Critical/Important → DONE
```

**Max iterations:** 3 per round. After 3, surface remaining issues to user.

**Present all fixes to the user.** The user is the navigator. Exception: pre-presentation perspective critiques (the "Before presenting to user" steps in napkin-to-spec) are quality gates — fix Critical/Important issues inline and note what changed. Skip the full iteration loop for pre-presentation gates.

## Synthesizing Multi-Perspective Feedback

When multiple critics review the same artifact:
1. **Group by location** — Same section flagged by multiple critics = high signal
2. **Resolve contradictions** — Present both views to user
3. **Prioritize convergence** — 3+ critics on same issue = definitely real
4. **Preserve dissent** — One critic's unique insight may be most valuable
