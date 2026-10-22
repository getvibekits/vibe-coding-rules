# 7 copilot-instructions.md examples (copy-paste)

GitHub Copilot reads plain-English instructions from your repo. Put repo-wide rules in `.github/copilot-instructions.md`, and rules for only some files in `.github/instructions/NAME.instructions.md` with an `applyTo` line at the top. Each folder below holds one ready-to-use file. Copy it to the path shown, edit the details, and delete anything that doesn't fit.

Full guide with where each file works (VS Code, GitHub.com, code review, cloud agent) and how it compares to AGENTS.md: **[getvibekits.com/rules/copilot-instructions-examples](https://getvibekits.com/rules/copilot-instructions-examples/?utm_source=github&utm_medium=copilot-instructions)**. Based on GitHub's Copilot docs, last checked Oct 2026.

## Quick start

```bash
mkdir -p .github
cp copilot-instructions/01-nextjs-supabase/copilot-instructions.md .github/copilot-instructions.md
```

For a path-specific file:

```bash
mkdir -p .github/instructions
cp copilot-instructions/04-tests/tests.instructions.md .github/instructions/
```

## The examples

| Example | File | Copy it to |
|---|---|---|
| 1. Next.js + Supabase web app | [copilot-instructions.md](01-nextjs-supabase/copilot-instructions.md) | `.github/copilot-instructions.md` |
| 2. Python script | [copilot-instructions.md](02-python-script/copilot-instructions.md) | `.github/copilot-instructions.md` |
| 3. Simple landing page (no build step) | [copilot-instructions.md](03-landing-page/copilot-instructions.md) | `.github/copilot-instructions.md` |
| 4. Tests | [tests.instructions.md](04-tests/tests.instructions.md) | `.github/instructions/tests.instructions.md` |
| 5. Database migrations | [database.instructions.md](05-database-migrations/database.instructions.md) | `.github/instructions/database.instructions.md` |
| 6. React components | [components.instructions.md](06-react-components/components.instructions.md) | `.github/instructions/components.instructions.md` |
| 7. Code review only | [review.instructions.md](07-code-review/review.instructions.md) | `.github/instructions/review.instructions.md` |

## Tips

- Keep instructions short and self-contained. The repo-wide file is sent with every chat request.
- Path-specific file names must end in `.instructions.md`. Separate several `applyTo` patterns with commas.
- `excludeAgent: "cloud-agent"` (example 7) means only Copilot code review uses that file; `excludeAgent: "code-review"` does the opposite.
- To check it's being used, open the references list at the top of a Copilot Chat reply and look for `.github/copilot-instructions.md`.
- Also using Cursor, Codex or Claude Code? An `AGENTS.md` in the root is read by all of them, and by Copilot's agent too. See the [8 AGENTS.md examples](../agents-md/).
- Want one filled in for your project type? Use the free [rules file generator](https://getvibekits.com/rules/generator/?utm_source=github&utm_medium=copilot-instructions) (runs in your browser, no signup).

MIT licensed, like the rest of this repo.
