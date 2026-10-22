---
applyTo: "**/*.test.ts,**/*.test.tsx"
---
- Use Vitest and React Testing Library, the same as the existing tests.
- Test what the user sees and does, not internal state.
- One behavior per test, with a name that reads like a sentence.
- Never delete or skip a failing test to make the suite pass. Tell me instead.
