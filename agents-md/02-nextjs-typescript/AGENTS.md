# AGENTS.md

## Project
A habit tracker web app. Next.js (App Router), TypeScript, Tailwind CSS.
Pages live in src/app, shared components in src/components.

## Setup commands
- Install: npm install
- Run locally: npm run dev
- Lint: npm run lint
- Build: npm run build

## Code style
- TypeScript strict mode. No `any` unless you explain why.
- Function components only. Reuse components in src/components before making new ones.
- Tailwind classes only. No inline styles.

## Rules
- Server-only code (database, API keys) stays in server components or route handlers, never in client components.
- Never put secret keys in files that start with NEXT_PUBLIC_.
- Run npm run lint and npm run build before you say a task is done, and fix what they report.
