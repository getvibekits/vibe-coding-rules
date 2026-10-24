# 6 plan mode prompts (copy-paste)

Plan mode makes your AI coding tool ask questions and write a step-by-step plan before it changes any code. You read the plan, fix it, and only then let it build. Cursor, Claude Code, Codex, GitHub Copilot, Lovable and Bolt all have one now.

Full guide with how to turn it on in each tool, when to skip it, and how to review a plan: **[getvibekits.com/rules/plan-mode](https://getvibekits.com/rules/plan-mode/?utm_source=github&utm_medium=plan-mode-prompts)**. Last checked Oct 24, 2026.

## How to turn it on

| Tool | How to turn it on | After you approve |
|---|---|---|
| Cursor | Press `Shift+Tab` in the chat input until Plan shows, or pick Plan in the mode picker. Cursor also suggests it when your prompt sounds like a big task. | Click to build the plan. Plans save in your home folder; **Save to workspace** keeps one in the project. |
| Claude Code | Press `Shift+Tab` until the status bar shows `⏸ plan mode on`, or start with `claude --permission-mode plan`. | Edits stay blocked until you approve the plan. |
| Codex (CLI) | Type `/plan`, optionally followed by your prompt. | Answer its questions or approve, then let it build. `/copy` (or `Ctrl+O`) copies the latest plan text. |
| GitHub Copilot (VS Code) | Use the Plan agent: type `/plan` plus the outcome, constraints and how you'll check it works. | Pick **Implement Plan**, **Approve Plan Only**, **Implement with Autopilot** or **Reject**. **Submit Feedback** asks for changes first. |
| Lovable | Open the mode picker next to the chat input and choose **Plan**. | **Approve** switches to Build mode and starts building. **Skip** moves on without it. |
| Bolt | Click **Plan** in the bottom-right of the chatbox (it turns blue). You can also start a new project in Plan Mode from the homepage. | Use the **Implement this plan** button, which switches to Build Mode. Click Plan again to turn it off. |

These tools change often. Check the guide above or the tool's own docs if a shortcut doesn't match.

## The prompts

### 1. Plan a new app (first prompt)

```text
I want to build: [one sentence: what it is and who it's for].

Before writing any code:
1. Ask me up to 3 questions about anything that's unclear.
2. Then write a plan with 5 to 8 small steps. Each step should be something I can test in the browser.
3. For each step, list the files you expect to change.
4. Say what you will NOT build in the first version.

I'm new to coding, so keep it simple and use plain English. Don't start building until I approve the plan.
```

Works in every tool on this page. The questions step is what makes plan mode worth it: it catches the thing you forgot to say before it costs you a rebuild.

### 2. Plan one new feature

```text
Plan how to add [feature, e.g. a "forgot password" link] to this project.

- Reuse the components and patterns already in the project.
- List every file you'd change and why.
- Tell me what could break, and how I can test that it still works.
- Keep everything else exactly as it is.

Don't change any files yet.
```

"Keep everything else exactly as it is" stops the plan from quietly growing into a redesign.

### 3. Find a bug before fixing it

```text
Something is broken: [what you did], [what you expected], [what happened instead].
Here's the exact error: [paste it].

Investigate first. Tell me the most likely cause in plain English, how sure you are, and the smallest fix.
If you need more information, tell me exactly what to check or paste. Don't change any code yet.
```

Lovable and Bolt both list debugging as a main use for plan mode. You approve the fix before any credits or tokens go to building it.

### 4. Compare two ways to do it

```text
What's the best way to [goal, e.g. let users upload a profile photo] in this project?
Give me 2 or 3 options with the tradeoffs (cost, difficulty, what could go wrong), recommend one,
then write the plan for the one you recommend.
```

Close to Lovable's own example prompt for comparing approaches.

### 5. Security check, then a plan

```text
Review this project for security problems a beginner might miss: secret keys in the code,
database tables anyone can read or change, pages that should need a login, and missing input checks.
List what you find in priority order, then plan the fixes. Don't change any files yet.
```

Pairs with our [12-point security checklist](https://getvibekits.com/rules/vibe-coding-security-checklist/?utm_source=github&utm_medium=plan-mode-prompts).

### 6. Start over from the plan

```text
That build didn't match what I wanted. I've undone the changes.
Here's what was wrong: [what you didn't like].
Update the plan so it's more specific about this, show me the new plan, and wait for my OK before building.
```

Cursor's docs recommend exactly this: revert, tighten the plan and run it again instead of patching a bad build with follow-up prompts.

## Make it a rule

Paste this into your rules file (`AGENTS.md`, `CLAUDE.md`, `.cursor/rules/`, Lovable or Bolt project knowledge) so the AI plans on its own for big changes:

```markdown
## Plan before big changes
- For anything that touches more than 2 files, the database, login or payments:
  write a short plan first (steps, files, how I can test it) and wait for my OK.
- For small, obvious fixes, just do it and tell me what changed.
```

More prompts for any tool: [vibe-coding-prompts.md](vibe-coding-prompts.md). MIT licensed, like the rest of this repo.
