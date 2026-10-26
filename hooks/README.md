# 7 beginner-safe hooks for Claude Code (plus one for Cursor)

A hook is a shell command Claude Code runs on its own at a set moment, like right after it edits a file or right before it runs a command. Use hooks for things that must happen every time (formatting, blocking risky actions, alerts) instead of asking for them in `CLAUDE.md` and hoping.

Full guide with the events, how exit codes work, a safety section and a "hook not working?" checklist: **[getvibekits.com/rules/claude-code-hooks-examples](https://getvibekits.com/rules/claude-code-hooks-examples/?utm_source=github&utm_medium=hooks)**. Facts from Anthropic's and Cursor's docs, checked Oct 25, 2026.

## Read before you copy

Command hooks run with your full user permissions. Read every command and script before you paste it, including these.

## How to use a file here

Each `.json` file in `claude-code/` is one hook. Paste its `"hooks"` block into the settings file listed below. If your settings file already has a `"hooks"` block, add the new event next to the ones already there instead of replacing it. The file must be valid JSON: no trailing commas, no comments. Then type `/hooks` in Claude Code to check it's listed.

| Settings file | Applies to | Shared with your team? |
|---|---|---|
| `~/.claude/settings.json` | All your projects | No, only your computer |
| `.claude/settings.json` | This project | Yes, you can commit it to git |
| `.claude/settings.local.json` | This project | No |

Several hooks use `jq` to read the JSON Claude Code sends on stdin. Install it with `brew install jq` on a Mac or `apt-get install jq` on Debian and Ubuntu.

## The hooks

| # | File | Event | What it does | Put it in |
|---|---|---|---|---|
| 1 | [notify-macos.json](claude-code/notify-macos.json) / [notify-linux.json](claude-code/notify-linux.json) | `Notification` | Desktop alert when Claude needs your input or permission | `~/.claude/settings.json` |
| 2 | [format-with-prettier.json](claude-code/format-with-prettier.json) | `PostToolUse` | Runs Prettier on every file Claude edits | `.claude/settings.json` |
| 3 | [protect-files.json](claude-code/protect-files.json) + [scripts/protect-files.sh](claude-code/scripts/protect-files.sh) | `PreToolUse` | Blocks edits to `.env`, `package-lock.json` and `.git/` | `.claude/settings.json` |
| 4 | [block-risky-commands.json](claude-code/block-risky-commands.json) + [scripts/block-risky-commands.sh](claude-code/scripts/block-risky-commands.sh) | `PreToolUse` | Blocks `rm -rf`, `git push --force`, `git reset --hard` and `DROP TABLE` | `.claude/settings.json` |
| 5 | [reminder-after-compact.json](claude-code/reminder-after-compact.json) | `SessionStart` (`compact`) | Re-adds your key rules after Claude summarizes the chat | `.claude/settings.json` |
| 6 | [command-log.json](claude-code/command-log.json) | `PostToolUse` | Logs every shell command Claude runs to `~/.claude/command-log.txt` | `~/.claude/settings.json` |
| 7 | [stop-until-done.json](claude-code/stop-until-done.json) | `Stop` (prompt hook) | Asks a Claude model to check the job is done before Claude stops | `.claude/settings.json` |

Hooks 1 to 3 and 5 to 7 come from Anthropic's hooks guide, lightly trimmed. Hook 4 uses the same pattern as the guide's blocking examples.

### The two scripts (hooks 3 and 4)

Copy them into your project and make them executable:

```bash
mkdir -p .claude/hooks
cp hooks/claude-code/scripts/*.sh .claude/hooks/
chmod +x .claude/hooks/*.sh
```

Exit code 2 blocks the action, and whatever the script prints to stderr goes back to Claude as the reason. Both are plain text matches, so treat them as a seatbelt, not a lock: hook 3 only watches the `Edit` and `Write` tools, and a command written a different way can slip past hook 4. They pair well with our [vibe coding security checklist](https://getvibekits.com/rules/vibe-coding-security-checklist/?utm_source=github&utm_medium=hooks).

Test a script by hand before you rely on it:

```bash
echo '{"tool_name":"Bash","tool_input":{"command":"rm -rf build"}}' | .claude/hooks/block-risky-commands.sh; echo $?
```

That prints the "Blocked" message and `2`. Swap the command for `ls` and you get `0`.

## Cursor

Cursor's hooks live in `.cursor/hooks.json` (one project) or `~/.cursor/hooks.json` (everything), with camelCase event names. [cursor/hooks.json](cursor/hooks.json) plus [cursor/hooks/format.sh](cursor/hooks/format.sh) is hook 2, Cursor-style:

```bash
mkdir -p .cursor/hooks
cp hooks/cursor/hooks.json .cursor/
cp hooks/cursor/hooks/format.sh .cursor/hooks/
chmod +x .cursor/hooks/format.sh
```

Cursor can also run your Claude Code hooks: with **Include Third-Party Plugins, Skills, and Other Configs** turned on (on by default), it loads hooks from `.claude/settings.json`, `.claude/settings.local.json` and `~/.claude/settings.json`.

## Sources

- [Claude Code docs: Automate actions with hooks](https://code.claude.com/docs/en/hooks-guide)
- [Claude Code docs: Hooks reference](https://code.claude.com/docs/en/hooks)
- [Cursor docs: Hooks](https://cursor.com/docs/hooks)
- [Cursor docs: Third-party hooks](https://cursor.com/docs/reference/third-party-hooks)

Looking for commands you run by typing `/name`? See [commands/](../commands/). Skills the AI can pick up on its own are in [skills/](../skills/).

MIT licensed, like the rest of this repo.
