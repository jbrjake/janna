---
name: critique-loop
description: "Use when reviewing documents, running adversarial reviews, conducting focus groups, or checking cross-document alignment. Triggers on: 'review this', 'critique', 'focus group', 'tribunal', 'graybeard review', 'gap analysis', 'alignment check', 'what's missing'."
---

# Critique Loop

Five modes of review, from quick self-check to full adversarial tribunal. Every generated artifact goes through at least one. Major artifacts get multiple rounds from different angles.

## The Five Modes

### 1. Quick Critique (per-artifact)

After generating any single document, run a quick self-review:
- Matches janna:document-forge template?
- Cross-references valid?
- Terminology consistent with existing artifacts?
- Lean strategy applied where relevant?
- No vague language ("various", "etc.", "as needed")?

Fix inline. No separate output needed.

### 2. Perspective Critique (per-phase)

At phase transitions, dispatch subagent(s) adopting specific expert perspectives:

| Phase | Perspectives |
|-------|-------------|
| 1 (Blueprint) | Systems Architect, Pragmatic Engineer |
| 3 (Overview) | Product Strategist, UX Advocate |
| 8 (Pitch) | Product Strategist, The Customer |
| 9 (Map) | The Customer, Pragmatic Engineer |
| 10 (Gauntlet) | Systems Architect, Security Engineer |

Standard critique output: Location → Issue → Severity → Suggestion.

### 3. Tribunal Mode (Phase 2)

**The grizzled graybeards.** Private equity acquisition due diligence reviewers. They've assessed a hundred companies this quarter. They walk in expecting a total nothingburger.

**Setup:**
- Generate 4-6 graybeard personas on the fly using janna:persona-generation tribunal rules
- Each has a specialty: infrastructure, data engineering, frontend/UX, enterprise product, security/ops, architecture
- 15-20 years experience each, named prior engagements, personal failure stories
- Dispatch as swarm with **crosstalk** — they can reference each other's findings

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

### Risk Rating: [2-5]/5
[Brief justification]
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
- Swarm of agents playing user personas with **crosstalk**
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

**Setup:** Assemble GTM + product + customer success personas.

**Round 2 focus:** General gaps — what's missing?
**Round 3 focus:** Self-service gaps — "What's missing to make this completely turnkey with no humans on the sales side?"

**Output per round:**
```markdown
## Gap Analysis — Session [N]

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

---

## The Iteration Protocol

Every critique mode follows the same loop:

```
Run critique → Categorize by severity → Present Critical+Important to user →
User decides per issue: fix | accept | defer → Apply fixes →
Re-run on changed sections only → If no new Critical/Important → DONE
```

**Max iterations:** 3 per round. After 3, surface remaining issues to user.

**Never fix silently.** The user is the navigator.

## Synthesizing Multi-Perspective Feedback

When multiple critics review the same artifact:
1. **Group by location** — Same section flagged by multiple critics = high signal
2. **Resolve contradictions** — Present both views to user
3. **Prioritize convergence** — 3+ critics on same issue = definitely real
4. **Preserve dissent** — One critic's unique insight may be most valuable
