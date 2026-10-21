# AGENTS.md

## Project
A small TypeScript library (and a demo API) published to npm.
Source in src/, tests next to the code as *.test.ts, build output in dist/ (never edit dist/ by hand).

## Setup commands
- Install: npm install
- Type check: npx tsc --noEmit
- Test: npm test
- Build: npm run build

## Code style
- TypeScript strict mode. Export types for everything public.
- No default exports. Named exports only.
- Every public function gets a short doc comment with one example.

## Rules
- Don't change a public function's name or arguments without asking. That breaks people who use the library.
- Validate API input before using it, and return clear error messages.
- Run the type check and the tests before you say a task is done.
