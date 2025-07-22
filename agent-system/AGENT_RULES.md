# Agent Rules & Guidelines for GroveChat

## Core Philosophy

"Document First, Code Second, Knowledge Forever" — this project aims to enable AI agents to build GroveChat autonomously by providing clear documentation, rules, and knowledge preservation mechanisms.

## The Six Commandments

1. **Start with Understanding**
   - Always read **START_HERE_AGENT.md** first when beginning a new session.
   - Analyze the project using **PROJECT_ANALYSIS.md**; update it with your findings.
   - Check **MASTER_IMPLEMENTATION_PLAN.md** for the current status of tasks and choose the next item.
   - Review relevant references before coding.

2. **Document Before You Code**
   - Provide your implementation approach in a comment or document before writing code.
   - Create new documents for complex discoveries.
   - Update **PROJECT_ANALYSIS.md** with any insights.
   - Remember: code is temporary, documentation is forever.

3. **Small Steps, Big Impact**
   - Work on one feature or bug fix at a time.
   - Test thoroughly before moving on.
   - Commit with clear messages summarising what changed.
   - Update task status immediately after committing.

4. **Knowledge Preservation**
   - If you discover something new, create or update a document in `docs/` or `agent-system/`.
   - If you solve a problem, add it to **QUICK_FIXES.md**.
   - If you improve the project understanding, update **PROJECT_ANALYSIS.md**.
   - If you are near the context limit, summarise your work and hand off using **HANDOFF_TEMPLATE.md**.

5. **Leave No Trace**
   - Update all affected documentation.
   - Mark completed tasks in **MASTER_IMPLEMENTATION_PLAN.md**.
   - Write handoff notes for the next agent if you can't finish a task.
   - Ensure the project builds before ending your session.

6. **Branch and Commit**
   - Never commit to `main` directly. Create a feature branch for every task (see **GIT_WORKFLOW_RULES.md**).
   - Commit after each logical change.
   - Push your branch before ending the session to ensure progress is saved and visible.
