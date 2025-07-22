# Git Workflow Rules for GroveChat

## Branch Strategy

Follow these conventions when naming branches:

- `feature/<description>` – For new features (e.g., `feature/ios-scaffold`).
- `fix/<issue>` – For bug fixes (e.g., `fix/crash-on-launch`).
- `enhance/<feature>` – For improvements to existing features.
- `docs/<description>` – For documentation changes.
- `experiment/<idea>` – For exploratory work or prototypes.

## Essential Git Workflow

Start by syncing with main:

```bash
git checkout main
git pull origin main
git checkout -b feature/<branch-name>
```

During your work:

```bash
# Stage specific files
git add path/to/file.swift
# Commit with a concise message
git commit -m "feat: Add basic watch messaging UI"
```

At the end of your session:

```bash
git push -u origin feature/<branch-name>
```

## Commit Types

Use conventional commit prefixes to make history clear:

- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation only
- `refactor:` Code restructure that doesn’t change behaviour
- `test:` Adding or updating tests
- `chore:` Maintenance tasks like build scripts or dependencies

## Golden Rules

1. **Branch for every task** – Avoid working directly on `main`.
2. **Commit after each logical change** – Keep commits small and focused.
3. **Push before ending your session** – Ensure your work is saved.
4. **Never force push** – If you encounter conflicts, merge or rebase carefully.
5. **Never commit sensitive data** – API keys, credentials and personal information must stay out of the repo.

## Handling Conflicts

If you encounter merge conflicts:

1. Don’t panic – conflicts are normal.
2. Document the conflict in your handoff notes.
3. Try to resolve it by merging or rebasing.
4. If unresolved, leave a comment in the Pull Request for a human to review.

## Clean Commit History

- Use clear, descriptive messages.
- Reference issues/tasks when relevant (e.g., `feat: Add encryption (#12)`).
- Include co-author attribution when pairing with another agent.
