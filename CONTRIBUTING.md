# Contributing

Thanks for helping improve these rules.

## Good contributions
- **Fix an outdated rule or command.** Tools change fast. If a command, API or setting in a file is wrong for the current version, open an issue or PR and link the official docs that show the change.
- **Make a rule clearer for beginners.** Shorter and plainer is better.
- **Suggest a new project type.** Open an issue with the stack and the 4 to 6 mistakes AI tools most often make on that kind of project.

## Guidelines
- Keep each rule to one line, written as an instruction to the AI tool.
- Keep the shared "How to work" rules the same across projects; put stack-specific rules under "Project rules".
- If you change a project's rules, update its `AGENTS.md`, both `.mdc` files in `projects/<project>/.cursor/rules/`, and the copies in `rules/`, so they stay in sync.
- `.mdc` files need their frontmatter block (`alwaysApply`, plus `globs` or `description`).
- No links to paid products, referral or affiliate links, or secrets of any kind in PRs.

By contributing, you agree that your contribution is licensed under the MIT License in this repo.
