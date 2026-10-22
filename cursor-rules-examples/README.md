# 10 Cursor rules examples (copy-paste .mdc files)

A Cursor project rule is a `.mdc` file in `.cursor/rules/` with a few lines of frontmatter that decide **when** it loads. These 10 examples cover all four rule types. Copy the ones that fit your project into `.cursor/rules/`, edit the details, and delete the rest.

Full guide with Cursor's own best practices and what to do with an old `.cursorrules` file: **[getvibekits.com/rules/cursor-rules-examples](https://getvibekits.com/rules/cursor-rules-examples/?utm_source=github&utm_medium=cursor-rules-examples)**. Based on Cursor's Rules docs, last checked Oct 2026.

## Quick start

```bash
mkdir -p .cursor/rules
cp cursor-rules-examples/01-core/core.mdc .cursor/rules/
```

## The 4 rule types

| Frontmatter | Cursor calls it | Loads when |
|---|---|---|
| `alwaysApply: true` | Always Apply | Every chat |
| `alwaysApply: false` + `globs` | Apply to Specific Files | A matching file is in context |
| `alwaysApply: false` + `description` | Apply Intelligently | Agent decides the description fits the task |
| `alwaysApply: false`, nothing else | Apply Manually | You @-mention it in chat |

The file must end in `.mdc`. A plain `.md` file in `.cursor/rules` is ignored. Separate several globs with commas.

## The examples

| Example | Type | File | Why |
|---|---|---|---|
| 1. Always on: how to work | Always Apply | [core.mdc](01-core/core.mdc) | The habits every project needs. Keep this one short, since it loads in every chat. |
| 2. Always on: explain like I'm new | Always Apply | [beginner.mdc](02-beginner/beginner.mdc) | Turns every change into a mini lesson, and you never have to guess what to type next. |
| 3. React components | Apply to Specific Files | [components.mdc](03-components/components.mdc) | Loads only when a component file is in the chat, so it never clutters other work. |
| 4. API routes: validate everything | Apply to Specific Files | [api.mdc](04-api/api.mdc) | The most common AI-code security bug is a route that trusts whatever the browser sends. |
| 5. Supabase migrations | Apply to Specific Files | [migrations.mdc](05-migrations/migrations.mdc) | Database changes are the hardest to undo. This rule makes the AI slow down only there. |
| 6. Python scripts | Apply to Specific Files | [python.mdc](06-python/python.mdc) | Dry run by default saves you from a script that "helpfully" renames 500 files. |
| 7. Tests | Apply to Specific Files | [tests.mdc](07-tests/tests.mdc) | AI agents sometimes "fix" a failing test by deleting it. This blocks that. |
| 8. Apply intelligently: database changes | Apply Intelligently | [database-changes.mdc](08-database-changes/database-changes.mdc) | No globs: Agent reads the description and pulls the rule in when the task is about the database, whatever file it's in. |
| 9. Apply intelligently: secrets and keys | Apply Intelligently | [secrets.mdc](09-secrets/secrets.mdc) | The prefixes are the trap: those variables are bundled into the code every visitor downloads. |
| 10. Manual: pre-launch checklist | Apply Manually | [release.mdc](10-release/release.mdc) | No description and no globs means it loads only when you type @release in chat. Perfect for a checklist you run once. |

## Tips

- Keep each rule short (Cursor's docs say under 500 lines) and split big ones into several small rules.
- Add a rule only after you see Agent make the same mistake twice.
- Rule not applying? An "Apply Intelligently" rule needs a description, and a file-scoped rule needs a glob that matches the file in the chat.
- Still have a `.cursorrules` file? Treat it as legacy and move its contents into a `core.mdc` like example 1, or into `AGENTS.md`. See the [8 AGENTS.md examples](../agents-md/).
- Want a full set for your project type? Every folder in [`projects/`](../projects/) has one, or use the free [rules file generator](https://getvibekits.com/rules/generator/?format=cursor&utm_source=github&utm_medium=cursor-rules-examples) (runs in your browser, no signup).

MIT licensed, like the rest of this repo.
