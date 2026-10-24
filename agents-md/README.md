# 8 AGENTS.md examples (copy-paste)

`AGENTS.md` is a plain Markdown file in the root of your project that tells AI coding agents how to work on it: what the project is, the exact commands to install, run and test it, your code style, and the rules they must follow. There are no required fields. OpenAI Codex, Cursor, GitHub Copilot's coding agent, Devin, Google Antigravity, Bolt and Lovable read it, and current Claude Code reads it when the project has no `CLAUDE.md`.

Each folder below holds one ready-to-use file. Copy it into your project, fill in the `[brackets]`, and delete anything that doesn't fit. Keep the commands exact: agents run the checks you list.

Full guide with which tools read AGENTS.md, where it goes in Codex, best practices and a "not being read?" checklist: **[getvibekits.com/rules/agents-md-examples](https://getvibekits.com/rules/agents-md-examples/?utm_source=github&utm_medium=agents-md)**. Last checked Oct 21, 2026.

## Quick start

```bash
cp agents-md/01-minimal/AGENTS.md ./AGENTS.md
```

## The examples

| Example | File | Use it for |
|---|---|---|
| 1. Minimal (beginners) | [AGENTS.md](01-minimal/AGENTS.md) | Start here if you're new. The "how to work with me" rules matter more than code style when you can't read the code yet. |
| 2. Next.js + TypeScript | [AGENTS.md](02-nextjs-typescript/AGENTS.md) | App Router, Tailwind, strict TypeScript, secrets kept out of `NEXT_PUBLIC_` vars. |
| 3. Python | [AGENTS.md](03-python/AGENTS.md) | A script or small app with a virtual environment, type hints and pytest. |
| 4. TypeScript library or API | [AGENTS.md](04-typescript-library/AGENTS.md) | An npm package: named exports, don't break public functions, type check before done. |
| 5. Spring Boot (Java) | [AGENTS.md](05-spring-boot/AGENTS.md) | Maven, controller/service/repository layers, migrations. Using Gradle? Swap in `./gradlew bootRun`, `./gradlew test` and `./gradlew build`. |
| 6. Monorepo (root + nested) | [root AGENTS.md](06-monorepo/AGENTS.md) and [apps/web/AGENTS.md](06-monorepo/apps/web/AGENTS.md) | One file per app or package. Codex, Cursor and Copilot pick the nearest one. |
| 7. Global Codex file | [AGENTS.md](07-global-codex/AGENTS.md) | Goes in `~/.codex/AGENTS.md` (run `mkdir -p ~/.codex` first) and applies to every project. Project files are added after it, so they win. Antigravity's global file is `~/.gemini/AGENTS.md` instead. |
| 8. Codex override | [AGENTS.override.md](08-override/services/payments/AGENTS.override.md) | One folder that needs different rules. Codex reads `AGENTS.override.md` before `AGENTS.md` in the same folder. Claude Code doesn't read override files. |

## Tips

- Using Claude Code too? Put `@AGENTS.md` at the top of your `CLAUDE.md` instead of copying the rules twice. See [AGENTS.md vs CLAUDE.md](https://getvibekits.com/rules/agents-md-vs-claude-md/?utm_source=github&utm_medium=agents-md).
- Claude Code ignoring your AGENTS.md? If the project has a `CLAUDE.md` or `CLAUDE.local.md`, Claude reads that instead. Fix it by adding `@AGENTS.md` to the CLAUDE.md, or type `/config` and set **Project instructions** to `claude-md-and-agents-md` so it reads both. Run `/memory` to check your AGENTS.md is in the list. Older versions need an update first (`claude --version`). Full setting table and checklist: [AGENTS.md not loading in Claude Code](https://getvibekits.com/rules/agents-md-vs-claude-md/?utm_source=github&utm_medium=agents-md).
- Keep it short, important rules first. Codex reads up to 32 KiB by default; Devin automatically includes only the first 16 KiB of each file.
- Long step-by-step jobs belong in skills, not AGENTS.md. This repo has [7 Claude Code skills](../skills/).
- Never put keys or passwords in it. It's a normal file in your repo.
- Want one filled in for your project type? Use the free [rules file generator](https://getvibekits.com/rules/generator/?utm_source=github&utm_medium=agents-md) (runs in your browser, no signup), or grab a full set from the [project types table](../README.md#project-types).

MIT licensed, like the rest of this repo.
