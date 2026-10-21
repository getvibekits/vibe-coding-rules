# AGENTS.md

## Repo layout
- apps/web: the Next.js website
- apps/api: the Node API
- packages/ui: shared React components

## Rules for the whole repo
- Package manager: pnpm. Install from the root with pnpm install.
- Each app and package has its own AGENTS.md. Read the one closest to the file you're changing.
- Don't add a dependency to the root package.json unless every app needs it.
- Run pnpm lint and pnpm test from the root before you say a task is done.
