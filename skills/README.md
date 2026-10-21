# 7 Claude Code skills for beginners (copy-paste SKILL.md files)

Each folder here is a ready-to-use skill. Copy the folder into `.claude/skills/` in your project (or `~/.claude/skills/` to use it in every project), then either let Claude pick it up when your request matches its `description`, or run it yourself by typing `/` plus the folder name (for example `/add-page pricing page with 3 plans`).

Each skill shows one feature of the SKILL.md format. Full page with where skills go, every frontmatter field, skills vs CLAUDE.md, and fixes when a skill won't trigger: **[getvibekits.com/rules/claude-code-skills-examples](https://getvibekits.com/rules/claude-code-skills-examples/?utm_source=github&utm_medium=skills)**. Last checked Oct 20, 2026.

## Quick start

```bash
mkdir -p .claude/skills
cp -r skills/explain-error .claude/skills/
```

## The skills

| Skill | What it does | Feature it shows | Notes |
|---|---|---|---|
| [explain-error](explain-error/SKILL.md) | Explain an error in plain English | A skill Claude can pick up on its own | No `disable-model-invocation`, so Claude can use it whenever an error shows up. The description says *when* to use it, in words you'd actually type. |
| [add-page](add-page/SKILL.md) | Add one page, step by step | Passing what you type with $ARGUMENTS | Run it as `/add-page pricing page with 3 plans`. Everything after the name replaces `$ARGUMENTS`. `disable-model-invocation: true` means it only runs when you type it. |
| [commit](commit/SKILL.md) | Commit my changes | Pre-approving tools with allowed-tools | `allowed-tools` lets Claude run those git commands without asking each time, but only during the turn you invoke the skill. It never pushes, because pushing isn't on the list and the steps say not to. |
| [what-changed](what-changed/SKILL.md) | What did I change? | Pulling live data in with !`command` | The `` !`git diff HEAD` `` line runs before Claude reads the skill, so Claude sees your real changes instead of guessing. This is a Claude Code feature; other tools that read SKILL.md may not run it. |
| [ui-style](ui-style/SKILL.md) | Our design rules | Reference knowledge that loads only for matching files | `paths` means Claude only loads it automatically when it's working on matching files, so it doesn't crowd every chat. Good for rules that grew too long for CLAUDE.md. |
| [database-changes](database-changes/SKILL.md) | Ask before touching the database | A safety rule tied to risky files | Claude Code's docs say a rule that must hold every single time belongs in a hook, not a skill. For beginners this is still a good guard, but keep the most important line near the top. |
| [seo-check](seo-check/SKILL.md) | Pre-publish SEO check | A manual checklist you run before launch | A skill like this costs almost nothing until you run it, because only its one-line description sits in Claude's context the rest of the time. |

## Using them in other tools

Cursor, OpenAI Codex and other agents that read the SKILL.md format can use most of these too. The `!`-command line in `what-changed` and the `allowed-tools` line in `commit` are Claude Code features, so other tools may ignore them. See [Cursor rules vs skills](https://getvibekits.com/rules/cursor-rules-vs-skills/?utm_source=github&utm_medium=skills) for where each tool looks for skills.

MIT licensed, like the rest of this repo.
