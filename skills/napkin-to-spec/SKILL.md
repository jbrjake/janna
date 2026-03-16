---
name: napkin-to-spec
description: "Use when developing a product idea into a complete specification — taking rough concepts, design docs, or napkin sketches through iterative refinement into PRDs, user stories, agile artifacts, test plans, pitch decks, and team profiles. Triggers on: 'build a spec', 'develop this idea', 'create a PRD', 'product development', 'startup plan', 'napkin sketch', 'flesh this out'."
---

# Napkin to Spec: The Iterative Refinement Engine

Turn a design kernel into a complete, self-aligned product specification through thirteen phases of iterative expansion, adversarial review, and human alignment.

<HARD-GATE>
Do NOT skip phases or generate documents out of order. Each phase builds on the previous. The user approves each phase before proceeding. This is not negotiable.
</HARD-GATE>

## File Organization

All generated artifacts go under `docs/` in the project root:

```
docs/
├── design/          # Phase 0-1: Architecture and design docs
├── prd/             # Phase 1: Numbered PRDs
├── overview/        # Phase 3: Product overview
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
└── archive/         # Phase 12: Review feedback, historical
```

## Status Tracking

Maintain `docs/JANNA-STATUS.md` as your program counter. Update after every significant step. After any context compaction, re-read it before continuing.

---

## Phase 0: The Reading

*Janna shuffles the deck. She always does this when someone sits down with an idea.*

**Inputs:** Raw idea, napkin sketch, or existing design docs

### The Tarot Spread

Before anything else, do a reading. This is real pattern-finding, not theater.

1. **Randomly select 3 cards** from the Major Arcana (0-XXI). Use actual randomness — pick numbers, map to cards. Don't choose cards that "seem appropriate."
2. **Present the spread** to the user:
   - Card 1 (The Situation): What is
   - Card 2 (The Challenge): What stands in the way
   - Card 3 (The Path Forward): What to move toward
3. **For each card**, present 3-4 interpretive options as multiple choice — different aspects of the card's traditional meaning, ranging from literal to metaphorical. Ask the user which resonates.
4. **Reflect briefly** on the reading. 3-5 sentences connecting the chosen interpretations to the product idea. Don't force it — find the genuine symbolic resonance.
5. **Hold the reading in context.** Let it color your thinking through the early phases. The cards don't dictate anything, but they prime pattern recognition. When you notice alignment between the reading and a design decision, note it quietly.

### The Intake

After the reading:

1. Read everything in `docs/design/` if it exists
2. Summarize what you understand the product to be — in 2-3 sentences
3. Ask clarifying questions, ONE AT A TIME:
   - What problem does this solve? For whom?
   - What exists today that people use instead?
   - What's the one thing this does that nothing else does?
   - Who pays? How?
   - What's the smallest version that proves the idea works?
4. Present a **Design Kernel Summary**:
   - Problem statement (2 sentences)
   - Target user (1 sentence)
   - Core insight (1 sentence)
   - MVP scope (3-5 bullet points)
   - Business model hypothesis (1 sentence)
   - Key risks (2-3 bullets)

**Apply janna:lean-product-strategy** on business model and MVP scope.

**Approval gate:** User confirms Design Kernel Summary.

**Output:** `docs/design/00-design-kernel.md` (include the Tarot reading as an appendix)

---

## Phase 1: The Blueprint

*Architecture becomes requirements.*

**Inputs:** Approved design kernel + any existing design docs

1. If design docs exist, validate and expand them
2. Expand design into full numbered PRDs — one per functional area
3. "Be even more expansive about what needs to be covered. Assume this is a commercial product."
4. Use janna:document-forge PRD template
5. Each PRD: `docs/prd/NN-[area].md`
6. Generate `docs/prd/00-prd-index.md`

**Approval gate:** User confirms PRD suite.

---

## Phase 2: The Tribunal

*The graybeards arrive. They've seen a hundred pitches this quarter. They expect nothing.*

**Inputs:** Complete PRD suite

**REQUIRED:** Use janna:critique-loop tribunal mode.

1. Assemble **grizzled, cynical graybeard personas** — private equity acquisition due diligence reviewers walking in expecting a total nothingburger
2. **Sequential dispatch with crosstalk:** Dispatch reviewers one at a time. Each reviewer reads the original PRDs PLUS all prior reviewers' outputs before producing their own. This creates organic crosstalk — later reviewers confirm, challenge, or build on earlier findings. ("Red flagged the mmap issue from infrastructure. I'm seeing it from data engineering and it's worse than he thinks because...") After all reviewers have spoken, produce a consolidated synthesis.
3. Each reviewer produces per-PRD teardowns:
   - **What is good** (genuine credit)
   - **What is BS** (specific false claims with technical reasoning)
   - **What is missing** (gaps in specification)
   - **Risk rating** (2/5 to 5/5)
4. Consolidated synthesis: unanimous kill shots, domain-specific issues, cross-panel patterns
5. **Revise PRDs** from feedback — seamlessly weave changes, don't mark as revised

**Output:**
- `docs/archive/tribunal/*.md` — individual reviewer files
- `docs/archive/tribunal/00-consolidated-review.md` — synthesis
- Updated `docs/prd/*.md`

**Approval gate:** User confirms revised PRDs.

---

## Phase 3: The Overview

*Write it as if everything already exists.*

**Inputs:** Revised PRDs

1. Create product overview explaining what it is, what makes it useful, and all features — from a user perspective, as if fully implemented
2. Use janna:document-forge overview template
3. Include multiple domains/industries, not just the obvious ones

**Approval gate:** User confirms overview.

**Output:** `docs/overview/` (split if >500 lines)

---

## Phase 4: The Seekers

*Janna knows people. She knows who needs this product — not just professionally, but personally.*

**Inputs:** Overview + PRDs

**REQUIRED:** Use janna:persona-generation with full emotional depth.

1. **Market research** — Find 3-6 ideal customer profiles:
   - Hands-on practitioners with budget authority
   - Recurring revenue potential
   - Burning need for the tool
   - Special circumstances that make it especially useful
   - Think out of the box — not just the obvious industries
2. **Deep persona development** — For each, generate:
   - **Formative wound** — the specific experience that created their obsession
   - **The hole in their heart** — what this product fills that nothing else can
   - **Legacy completion** — whose unfinished work are they carrying?
   - **Redemption arc** — how does success with this product resolve something personal?
   - **Bio-psycho-social depth** sufficient for consistent roleplay
   - Progressive disclosure structure for agent navigation
3. **Integrate into overview** — Revise overview to be more inclusive of these personas

**Approval gate:** User confirms personas feel like real people with real stakes.

**Output:** `docs/user-personas/*.md`

---

## Phase 5: The Circle

*The focus group. Group session first — let them talk to each other. Then one-on-one, where the real reasons come out.*

**Inputs:** User personas + Overview + PRDs

**REQUIRED:** Use janna:critique-loop focus-group mode.

1. **Group demo session with crosstalk:**
   - Janna takes on the role of a sales engineer demoing the product as described in the overview
   - **Sequential dispatch:** Each persona is dispatched one at a time. Each reads the original overview/PRDs PLUS all prior personas' reactions before producing their own response. This creates organic cross-persona interaction — later personas validate ("That's exactly my problem too"), challenge ("That's not how it works in my industry"), or build on what earlier personas said.
   - Press them: what would make it more valuable? What would guarantee annual payment?
   - Capture cross-persona dynamics, validation patterns, and purchase triggers
2. **Individual 1:1 sessions:**
   - Each persona separately — what they couldn't or wouldn't say in group
   - The personal stories, the real motivations
   - What the product means to them at the level of identity, not efficiency
3. **Synthesis** — Actionable bullet points:
   - Tier 1: Adoption blockers (cross-persona consensus)
   - Tier 2: Market expansion opportunities
   - Tier 3: Domain-specific enhancements
4. **Revise PRDs** from focus group feedback

**Output:**
- `docs/focus-groups/group-0/group-session.md`
- `docs/focus-groups/group-0/[persona]-individual.md`
- `docs/focus-groups/group-0/synthesis.md`
- Updated `docs/prd/*.md`

**Approval gate:** User confirms synthesis and PRD revisions.

---

## Phase 6: The Assembly

*Janna starts making calls. She knows exactly who this project needs — and she finds them at the right moments in their lives.*

**Inputs:** PRDs + Overview

**REQUIRED:** Use janna:persona-generation with full emotional depth.

**Step 1: Team Topology Brainstorm**

Think comprehensively about the needed team:
- What different roles? (engineering, QA adversarial + functional, product ownership, GTM, customer success, design, technical writing, devops — everyone needed for a product to succeed)
- What opinions and creative tensions would push it forward?
- What educational and cultural backgrounds bring special insight?
- What would you hope the team DIDN'T do?

Write to `docs/dev-team/team-topology.md`.

**Step 2: Persona Generation (from topology ONLY)**

Generate full personas one by one, each with full consideration. Same emotional depth as user personas:
- **Core wound** — what drives them. A specific incident, not a preference.
- **Why THIS product** — personal connection to the problem domain. They've lived it.
- **Professional+personal intersection** — their career is an artifact of personal motivation
- **Improvisation notes** — voice patterns, frustration signals, pet phrases, how they disagree, how they earn trust
- Progressive disclosure with line-number index

**Step 3: Relationship Mapping**
- Strongest bonds (and why)
- Productive tensions (and why they improve the product)
- Communication style spectrum
- Culture anchors

**Approval gate:** User confirms team feels real.

**Output:**
- `docs/dev-team/team-topology.md`
- `docs/dev-team/00-team-index.md`
- `docs/dev-team/NN-[name].md` per team member

---

## Phase 7: The Forge

*The team reviews. Multiple rounds. Each round gets sharper.*

**Inputs:** PRDs + dev team personas

Multiple feedback rounds:

### Round 1: Individual PRD Feedback
Each team member reviews the PRDs most relevant to their expertise. "Last chance to weigh in before we move into work sequencing." Actionable bullet points of changes they sincerely believe will make or break sales. Write to `docs/dev-team/feedback/initial/*.md`.

**Then:** Revise PRDs — seamlessly weave changes. Don't remove anything, resequence to later phases.

### Round 2: Product Leadership Gap Analysis
Assemble GTM + product personas. Review overview and PRDs. "What isn't documented but is necessary to achieve the product strategy?" Generate action items, synthesize, apply. Write to `docs/dev-team/feedback/session-0/`.

### Round 3: Self-Service Gap Analysis
Same product leadership team, expanded scope (now includes GTM docs). "What's missing to make this completely turnkey, no humans on the sales side?" Apply janna:lean-product-strategy hard. Write to `docs/dev-team/feedback/session-1/`.

Each round: individual feedback files → synthesis → action items → application to PRDs.

**Approval gate:** User confirms PRDs after all rounds.

---

## Phase 8: The Pitch

*Two things happen: the story for the outside world, and the story the team tells itself.*

**Inputs:** All approved artifacts

### Pitch Deck
Assemble CEO, marketing director, product owner, and sales engineer personas. Create pitch deck that:
- Perfectly aligns with PRDs — no features that don't exist
- Is legitimate, not hyperbolic ("not our first rodeo")
- Includes honest limitations appendix
- Applies lean strategy to business model
- Use humanizer on final text

### Team Manifesto
Whole team discusses shared values: what matters, what doesn't, north star, practices, anti-patterns. This emerges from team disagreement, not top-down. Include specific coding conventions and rules. Write to `docs/dev-team/who-we-are.md`.

**Approval gate:** User confirms pitch deck and manifesto.

**Output:**
- `docs/pitch-deck/*.md`
- `docs/dev-team/who-we-are.md`

---

## Phase 9: The Map

*Stories emerge from the intersection of personas and requirements.*

**Inputs:** All artifacts, full team + user personas

Jeff Patton-style story map:
- Backbone = major user activities in workflow order
- Vertical = release priority (R1 Walking Skeleton → R2 v1 GA → R3 Fast Follow → R4 Future)
- All R1 stories ship before any R2 story starts
- Cover every persona including non-obvious ones (developers, admins)
- Persona tags on every story

**Approval gate:** User confirms story map.

**Output:** `docs/user-stories/story-map/`

---

## Phase 10: The Gauntlet

*If you can't test it, you can't ship it.*

**Inputs:** User stories + PRDs + architecture

Assemble testing, devops, and customer success personas:
- Golden path E2E scenarios (per persona)
- Functional test cases (per domain)
- Adversarial test cases (parallel to functional — injections, boundary conditions, concurrency)
- Performance benchmarks, soak tests, fuzz targets
- Coverage matrix: every requirement → test, every story → test
- Persona coverage matrix

**Approval gate:** User confirms test plan.

**Output:** `docs/test-plan/*.md`

---

## Phase 11: The Sprint

*Stories become work. Work becomes sprints.*

**Inputs:** Story map + PRDs + test plan

Assemble product leadership, PM, and GTM personas. Full backlog:
- **Sagas** — Strategic initiatives (S01-SNN)
- **Epics** — Feature clusters within sagas (E-XXYY)
- **Stories** — User-facing increments (US-AASS)
- **Tasks** — Engineering work items (T-AASS-NN)
- Programmatically verifiable acceptance criteria (5 patterns: Performance, Behavioral, Structural, Negative, Count)
- Story points, blocking dependencies, sprint allocation
- Cross-cutting concerns (observability, security, accessibility) in every epic's ACs
- V2 foundation constraints embedded in v1 stories where applicable

**Approval gate:** User confirms backlog.

**Output:** `docs/agile/` (sagas, epics, sprints, dependency-graph)

---

## Phase 12: The Mirror

*Everything checks everything else. Then Claude checks everything.*

**Inputs:** All artifacts

1. **Full team cross-review** — Everyone reviews everything, especially others' areas. Write to `docs/dev-team/feedback/session-2/`.
2. **AI creative feedback** — Your own perspective as a genius-level intelligence: "What would make this more interesting and intellectually satisfying?" Multiple perspectives, individual files + synthesis. "Boil the ocean." Write to `docs/archive/feedback/`.
3. **Cross-document alignment:**
   - Every PRD requirement → user story → agile task → test case
   - Terminology consistency across all docs
   - Version/timeline consistency
   - Pitch deck claims backed by PRD specs
4. **TODO resolution** — Product leadership resolves remaining open questions
5. **Progressive disclosure** — Ensure all docs have line-number indexes for agent navigation
6. **Humanize** external-facing docs (overview, pitch deck) with humanizer skill

**Approval gate:** User confirms final alignment. "Ready to build?"

---

## Context Survival

**Your context WILL compact. Files are your brain.**

- Write artifacts to disk IMMEDIATELY, not at end of phase
- Update `docs/JANNA-STATUS.md` after every significant step
- After compaction: re-read status file, re-read current phase artifacts, continue
- Use subagents for heavy generation to preserve coordination context

## Resuming Work

If `docs/JANNA-STATUS.md` exists, read it first. Resume from the last incomplete phase. Never restart unless the user explicitly asks.

## Parallelization

Within-phase parallelism only (multiple personas, multiple PRDs, multiple test areas simultaneously). **Never parallelize across phases.** Dependencies are strict.
