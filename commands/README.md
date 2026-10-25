# 7 custom slash commands for Claude Code and Cursor

Each folder is one command, written as a `SKILL.md` file. Claude Code merged custom commands into skills, and Cursor now converts old commands to skills too, so the same folder works in both: put it in `.claude/skills/` and type `/` plus the folder name.

Full guide with where the files go in Claude Code, Cursor, Codex and Copilot, how `$ARGUMENTS` works, a cheat sheet of built-in commands, and what to check when a command doesn't show up: **[getvibekits.com/rules/custom-slash-commands](https://getvibekits.com/rules/custom-slash-commands/?utm_source=github&utm_medium=commands)**. Last checked Oct 25, 2026.

## Quick start

```bash
mkdir -p .claude/skills
cp -r commands/plan-feature .claude/skills/
```

Then type `/plan-feature a contact form that emails me`. Everything after the command name replaces `$ARGUMENTS`.

Want it in every project instead of one? Copy the folder to `~/.claude/skills/` (Claude Code) or `~/.cursor/skills/` (Cursor).

## The commands

| Command | What it does | What it shows | Notes |
|---|---|---|---|
| [/plan-feature](plan-feature/SKILL.md) | Plan a feature before building it | an argument + manual-only | Run it as `/plan-feature a contact form that emails me`. `disable-model-invocation: true` means the AI never starts this on its own; it runs only when you type it. |
| [/explain-error](explain-error/SKILL.md) | Explain an error in plain English | paste the error as the argument | Paste the whole error after the command. If you leave it empty, the steps still tell the AI to ask you for what it needs. |
| [/write-tests](write-tests/SKILL.md) | Write tests for one file | a file name as the argument | Step 4 keeps the AI from changing your code just to make a failing test pass without telling you. |
| [/fix-lint](fix-lint/SKILL.md) | Fix lint errors without changing behavior | optional argument | Run it as `/fix-lint` for the whole project or `/fix-lint src/components` for one folder. |
| [/security-check](security-check/SKILL.md) | Quick security check before you publish | manual-only, no arguments needed | Pairs with our [12-point security checklist](https://getvibekits.com/rules/vibe-coding-security-checklist/?utm_source=github&utm_medium=commands). We avoided the names `/security-review` (built into Claude Code) and `/review-security` (built into Cursor). |
| [/commit-message](commit-message/SKILL.md) | Write a commit message from your changes | allowed-tools (Claude Code only) | `allowed-tools` lets Claude Code run those two git commands without asking you each time, only for the turn where you run the command. Cursor's skills docs don't list this field. |
| [/explain-file](explain-file/SKILL.md) | Explain a file like I'm new to coding | a file name as the argument | This one leaves out `disable-model-invocation`, so the AI can also load it on its own when you ask something like "what does this file do?". |

## Good to know

- `disable-model-invocation: true` means the AI never runs the command on its own; it only runs when you type it. Six of the seven use it. `/explain-file` leaves it out on purpose.
- The names avoid built-in commands. In Claude Code, a skill with the same name as a built-in replaces it, so we skipped `/review` and `/security-review`, and Cursor's `/review-security`.
- Cursor's docs don't say whether it fills in `$ARGUMENTS` or reads `argument-hint` and `allowed-tools`, so in Cursor just type your details after the command.
- Still have files in `.claude/commands/`? Claude Code still reads them. In Cursor, run `/migrate-to-skills` (Cursor 2.4 and later) to convert old commands.

Looking for skills the AI can pick up on its own? See [skills/](../skills/).

MIT licensed, like the rest of this repo.
