# 7 beginner-safe subagents for Claude Code (plus Cursor and Codex)

A subagent is a helper your AI hands a side job to, like reviewing your changes or running the tests. It works in its own context window with its own instructions and its own allowed tools, and sends back only a summary, so your main chat doesn't fill up with logs.

Full guide with every frontmatter field, how the model gets picked, subagents vs skills vs hooks vs agent teams, and a "not showing up?" checklist: **[getvibekits.com/rules/claude-code-subagents-examples](https://getvibekits.com/rules/claude-code-subagents-examples/?utm_source=github&utm_medium=subagents)**. Facts from Anthropic's, Cursor's and OpenAI's docs, checked Oct 26, 2026.

## How to use a file here

Each `.md` file in `claude-code/` is one subagent: a short YAML header, then the instructions. Copy it into `.claude/agents/` (this project, and you can commit it) or `~/.claude/agents/` (all your projects). If that folder didn't exist when you started Claude Code, restart it once.

```bash
mkdir -p .claude/agents
cp subagents/claude-code/code-reviewer.md .claude/agents/
```

Claude reads each subagent's `description` to decide when to use it. You can also ask for one by name.

## The subagents

| # | File | What it does | Tools |
|---|---|---|---|
| 1 | [code-reviewer.md](claude-code/code-reviewer.md) | Reviews recent changes for bugs, security problems and readability | `Read, Grep, Glob, Bash` |
| 2 | [debugger.md](claude-code/debugger.md) | Finds the root cause of an error and makes the smallest fix | `Read, Edit, Bash, Grep, Glob` |
| 3 | [test-runner.md](claude-code/test-runner.md) | Runs the tests, fixes failures without weakening a test, and reports a short summary | `Read, Edit, Bash, Grep, Glob` |
| 4 | [security-checker.md](claude-code/security-checker.md) | Checks auth, payments, user data and API keys, reports by severity | `Read, Grep, Glob` |
| 5 | [verifier.md](claude-code/verifier.md) | Checks a task is really done before Claude says it is | `Read, Grep, Glob, Bash` |
| 6 | [docs-writer.md](claude-code/docs-writer.md) | Updates the README and other Markdown docs | `Read, Grep, Glob, Edit, Write` |
| 7 | [Explore.md](claude-code/Explore.md) | Replaces the built-in Explore search helper with one on Haiku, to save cost | `Read, Grep, Glob` |

Number 7 goes in `~/.claude/agents/` and must keep the name `Explore`. Delete it to go back to the built-in one.

The security checker is a second pair of eyes, not a security audit. It pairs well with our [vibe coding security checklist](https://getvibekits.com/rules/vibe-coding-security-checklist/?utm_source=github&utm_medium=subagents).

### Extras

- [CLAUDE-md-snippet.md](claude-code/CLAUDE-md-snippet.md): a few lines for your `CLAUDE.md` that tell Claude when to use the subagents.
- [force-one-model.settings.json](claude-code/force-one-model.settings.json): put every subagent on Haiku. `CLAUDE_CODE_SUBAGENT_MODEL` alone is only a default; `CLAUDE_CODE_SUBAGENT_MODEL_FORCE` makes it stick.

## Cursor

Cursor reads `.claude/agents/` and `~/.claude/agents/` too, next to its own `.cursor/agents/`. Its documented fields are `name`, `description`, `model`, `readonly` and `is_background`, so use `readonly: true` to make one read-only there, and `model: inherit` in files you share between both tools. [cursor/security-checker.md](cursor/security-checker.md) is the Cursor version of number 4. Call it with `/security-checker`.

## OpenAI Codex

Codex custom agents are TOML files in `.codex/agents/` (project) or `~/.codex/agents/` (personal), with `name`, `description` and `developer_instructions`. [codex/reviewer.toml](codex/reviewer.toml) is the reviewer from OpenAI's docs, lightly trimmed. Codex agents inherit the parent session's permissions, so "do not edit files" in the instructions is not a read-only sandbox.

## Sources

- [Claude Code docs: Create custom subagents](https://code.claude.com/docs/en/sub-agents)
- [Claude Code docs: Model configuration](https://code.claude.com/docs/en/model-config)
- [Cursor docs: Subagents](https://cursor.com/docs/subagents)
- [OpenAI docs: Codex subagents](https://learn.chatgpt.com/docs/agent-configuration/subagents)

Things that must happen every time, like formatting after edits, belong in [hooks/](../hooks/). Reusable workflows that run in your main chat are in [skills/](../skills/), and commands you type as `/name` are in [commands/](../commands/).

MIT licensed, like the rest of this repo.
