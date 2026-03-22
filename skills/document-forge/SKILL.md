---
name: document-forge
description: "Use when generating any product development document — PRDs, overviews, pitch decks, user stories, agile artifacts, test plans, or dev team profiles. Provides templates and quality standards for each document type. Triggers on: 'write a PRD', 'create an overview', 'pitch deck', 'user stories format', 'epic template', 'test plan structure'."
---

**Skill type: FLEXIBLE** — Adapt to context, but document every deviation.

# Document Forge

Templates and quality standards for every document type in the napkin-to-spec pipeline. These are structural guides, not fill-in-the-blank forms — adapt to the product's reality.

## Universal Rules

1. **Cross-reference everything.** Every document should link to related docs. Use relative paths: `[PRD-03](../prd/03-entity-resolution.md)`
2. **Anchor IDs.** Requirements, stories, epics, and test cases get unique IDs for traceability. Format: `REQ-[AREA]-[NNN]`, `US-[PERSONA]-[NNN]`, `E-[NNNN]`, `TC-[AREA]-[NNN]`
3. **Use specific language.** Replace "various", "etc.", "and more", "as needed", "appropriate" with concrete details, or mark `[TODO: specify]` for later resolution.
4. **Version awareness.** Tag features with their target version: `(v1)`, `(v1.1)`, `(future)`.
5. **Lean bias.** Apply janna:lean-product-strategy to every document. Self-service is the default.
6. **Team voices in ACs.** Embed perspective commentary in acceptance criteria: `[Role: concern]` — shows *why* priorities exist, not just what they are. (In Phase 1, use generic role labels like `[Security:]` or `[Ops:]`. After Phase 6, replace with actual team member names during Phase 7 feedback rounds.)
7. **Cross-cutting concerns.** Every epic's ACs must include observability, security, and accessibility criteria — these are woven in, not bolted on.
8. **Honest limitations.** For every feature deferred to a later version, generate a limitations entry: what's the gap, what's the workaround, when is it planned.
9. **Release tiers as hard gates.** Release tiers (R1, R2, R3...) aren't just labels — all stories in R1 must complete before any R2 story starts. Generate blocking relationships accordingly.
10. **Persona coverage matrix.** After generating stories, produce a matrix showing which personas are served by which stories. Flag any persona with fewer than 3 stories.
11. **Integration testing.** Every sprint adding visible features must include at least one integration story (1–3 SP) wiring subsystems together. No sprint plan is complete without it.

---

## Product Axioms

Non-negotiable properties that must be true at every sprint boundary. These trace to test cases the same way requirements do. Verify every sprint.

| ID | Axiom | Verification |
|----|-------|-------------|
| AX-001 | **App launches.** The application starts and displays non-default output on all target platforms. | Lights-on story AC + TC-SYS-ADV-001 |
| AX-002 | **Core function works.** The application performs its primary function end-to-end with observable output. | Golden path E2E test |
| AX-003 | **Component outputs are compatible.** Every subsystem's output is accepted by its downstream consumer without format conversion, silent coercion, or data loss. | Integration tests + TC-SYS-ADV-002 |
| AX-004 | **Walking skeleton is observable.** At least one user-facing workflow is exercisable from entry point to visible result. | Sprint demo with actual application output |

Axioms are not aspirational — they are hard gates. A sprint that breaks an axiom is not done regardless of story completion.

---

## Acceptance Criteria Patterns

Use these seven verifiable AC formats:

| Pattern | Template | Example |
|---------|----------|---------|
| **Performance** | metric OP threshold | Ingestion throughput >= 10K events/sec |
| **Behavioral** | Given X, When Y, Then Z | Given a malformed record, when parsed, then error logged and record skipped |
| **Structural** | component produces artifact | Parser emits Arrow RecordBatch with schema metadata |
| **Negative** | action does NOT cause outcome | Deleting a source does NOT delete previously ingested events |
| **Count/Existence** | collection.count OP N | Dashboard displays >= 1 anomaly indicator per entity |
| **Integration** | Output of A fed to B produces C | Parser output fed to renderer produces visible chart |
| **System** | User performs action, observes result | User launches app and sees dashboard with default data |

---

## Conditional Loading

Read companion files based on the current phase:

- Read `references/templates.md` when generating any document — contains all structural templates (PRD, overview, pitch deck, stories, agile, test plan, dev team, focus group)
- Read `references/advanced-patterns.md` when polishing documents, doing final review (Phase 12), or when the spec is mature enough for adversarial test cases, release checklists, and future-proofing constraints
