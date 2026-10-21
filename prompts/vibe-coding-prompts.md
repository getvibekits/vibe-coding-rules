# 21 vibe coding prompts (copy-paste cheat sheet)

Plain-English prompts for beginners building with Lovable, Bolt, Cursor, Claude Code, Codex or Copilot, grouped by stage: plan, set up rules, build, fix, check, clean up, launch, and keep the chat fresh. Replace the `[brackets]` with your own details.

Full page with a tool-by-tool table and tips: **[getvibekits.com/rules/vibe-coding-prompts](https://getvibekits.com/rules/vibe-coding-prompts/?utm_source=github&utm_medium=prompts)**. Last checked Oct 20, 2026.

## The 4-line template

Use this shape for any change you ask for:

```text
Goal: [what the user can do when this is done]
Context: [the page, file or component; paste errors or screenshots]
Leave alone: [what must not change]
Done when: [a check you can see or run]
```

## Contents

- [1. Plan before any code](#1-plan-before-any-code)
- [2. Set up rules once](#2-set-up-rules-once)
- [3. Build one feature at a time](#3-build-one-feature-at-a-time)
- [4. Fix an error](#4-fix-an-error)
- [5. Check it before you trust it](#5-check-it-before-you-trust-it)
- [6. Clean up and understand the code](#6-clean-up-and-understand-the-code)
- [7. Launch and deploy](#7-launch-and-deploy)
- [8. Save credits and keep the chat fresh](#8-save-credits-and-keep-the-chat-fresh)

## 1. Plan before any code

### Interview me first

```text
I want to build [one sentence: what it is and who it's for].
Don't write any code yet.
Interview me first: ask me one question at a time about who uses it, the one key thing they do, what data it saves, and what's NOT in version 1.
Keep going until you understand it, then sum up what you heard in 5 bullet points.
```

Lovable's prompting guide says asking for clarifying questions up front prevents misunderstandings and wasted effort, and Anthropic's Claude Code guide recommends letting the agent interview you for bigger features. Use it in Plan mode if your tool has one.

### Turn the answers into a short spec

```text
Turn what we agreed into a file called SPEC.md with:
- The goal in one sentence
- Who it's for
- The pages or screens
- The data we store
- Out of scope for version 1
- A build order of 5 to 8 small steps, each with one line on how I can test it
Don't write any app code yet. Show me SPEC.md and wait for my OK.
```

A written plan with a test line per step is what keeps every later prompt small. Claude Code's docs suggest starting a fresh session to build from the finished spec.

### Pick a beginner-friendly stack

```text
I'm a beginner. Suggest the simplest setup for this app: what to build it with, where the data lives, and where it will be hosted.
Give me 2 options at most, in plain English, with what each one costs to start and what would make me outgrow it.
Don't install anything yet.
```

Asking for two options with the trade-offs stops the agent from quietly picking something you can't maintain. Bolt's docs suggest starting with the app's architecture, including your choice of tools and frameworks.

## 2. Set up rules once

### Write my rules file

```text
Read this project and write an AGENTS.md file (under 60 lines) with:
- What the app is, in 2 sentences
- The stack
- The exact commands to run, test and build it
- Rules: work in small steps, explain changes in plain English, ask before changing the database, login or payments, never put secret keys in front-end code
Show it to me before you save it.
```

A rules file is the prompt you'd otherwise repeat in every chat. Cursor, Codex, Copilot and others read `AGENTS.md`. Prefer a ready-made one? Use the [free rules file generator](https://getvibekits.com/rules/generator/?utm_source=github&utm_medium=prompts), or copy from [CLAUDE.md examples](https://getvibekits.com/rules/claude-md-examples/?utm_source=github&utm_medium=prompts) and [Cursor rules examples](https://getvibekits.com/rules/cursor-rules-examples/?utm_source=github&utm_medium=prompts).

### Save the look once

```text
Use this design direction for the whole app: [calm and minimal / bold and playful / premium and sleek].
Colors: [your colors]. Font: [font]. Rounded cards, generous spacing.
Reuse existing components before creating new ones.
```

Lovable's docs recommend picking a style direction early and saving its keywords to Project Knowledge so every new section matches. Bolt has Project Knowledge too.

## 3. Build one feature at a time

### Build one step, then stop

```text
Build step [number] from SPEC.md only.
When it's done, stop. Tell me what you changed and exactly how to test it in the preview.
```

Lovable's and Bolt's docs say the same thing: make one change, check that it works, then move on. It's also the habit that saves the most credits.

### The feature prompt template

```text
Goal: [what the user can do when this is done]
Where: [the page, file or component]
Leave alone: [what must not change, e.g. login, the header, existing styling]
Done when: [how we'll know it works, e.g. "I can add a habit and it's still there after a refresh"]
```

The feature version of the 4-line template. Lovable's guide says a good change prompt has three parts: what to build, where it goes, and what must stay untouched.

### Show me the plan for this change first

```text
Before you change anything, list the files you'll touch and what you'll change in each one, in plain English.
Wait for my OK before editing.
```

Cheap insurance before any change that touches more than one file. Cursor's and Claude Code's docs both recommend planning first when a change spans several files or you're unsure of the approach.

### A section with real words

```text
Add a section below the hero: a centered headline "[your real headline]" and three cards in a row. Each card has an icon, a short title and one sentence: [card 1], [card 2], [card 3].
Only change the home page.
```

Lovable's docs say placeholder text like "lorem ipsum" gives the AI nothing to respond to; real words get the layout sized right. More design prompts: [Lovable design prompts](https://getvibekits.com/rules/lovable-prompts/?utm_source=github&utm_medium=prompts#design).

## 4. Fix an error

### Report a bug so it gets fixed the first time

```text
Bug: when I [exact steps], I expect [what should happen] but [what happens instead].
The error message is: [paste it].
Don't change anything yet. Explain the most likely cause in 2 sentences, then suggest the smallest fix.
```

Expected vs actual plus the exact error lets the AI fix the cause instead of guessing.

### Fix the cause, not the symptom

```text
The build fails with this error: [paste the error].
Fix the root cause. Don't hide the error, delete a test, or turn off a check to make it pass.
Then run the build again and show me the output.
```

Anthropic's Claude Code guide uses almost exactly this example: name the error, ask for the root cause, and ask it to prove the build now works.

### Explain this error like I'm new

```text
Explain this error in plain English: what it means, which file and line it comes from, and the 1 or 2 most likely reasons.
Don't fix it yet.
[paste the error]
```

Understanding the error first stops the fix-retry loop before it starts.

### Break the fix-retry loop

```text
We've tried to fix this twice and it's still broken. Stop changing code.
List the 3 most likely causes, most likely first, and how I can check each one.
We'll pick one together before you edit anything.
```

If this doesn't help, start fresh. Claude Code's docs say that after two failed corrections, a clean session with a better prompt almost always beats a long one; Cursor's docs suggest reverting and refining the plan instead of patching. Use the summary prompt in section 8 to carry over what matters.

## 5. Check it before you trust it

### Quick security check

```text
Check this app for these problems and tell me pass or fail for each, with the file and line:
1. Secret keys or passwords in front-end code or committed files
2. Database tables with user data that anyone can read (row-level security off)
3. Pages or API routes that work without logging in but shouldn't
4. Prices or "paid" status that the browser can change
5. File uploads that are public by accident
Don't fix anything until I say which ones to fix.
```

A short version. The full list, with the one-shot review prompt, is in the [vibe coding security checklist](https://getvibekits.com/rules/vibe-coding-security-checklist/?utm_source=github&utm_medium=prompts).

### Write and run tests

```text
Write tests for [feature] that cover: the normal case, empty input, and a logged-out user.
Run them and show me the output.
If a test fails, fix the code, not the test.
```

Giving the agent a check it can run (tests, a build, a screenshot) is the first tip in Anthropic's Claude Code best-practices guide.

### Review it with fresh eyes

```text
Review the changes since [the last commit / the start of this chat] as if someone else wrote them.
Only flag bugs, security problems, or anything that doesn't match SPEC.md. Skip style nitpicks.
List each problem with the file and a one-line fix.
```

Claude Code's docs note that a reviewer told to find gaps will usually find some, so telling it to skip style keeps the list to things that matter.

## 6. Clean up and understand the code

### Clean up without breaking anything

```text
Clean up [file or folder] without changing what the app does.
First list the changes you'd make (duplicate code, unclear names, very long functions) and why.
Wait for my OK, then make them one at a time and run the app or tests after each.
```

"Without changing what the app does" and "one at a time" are what make a refactor safe for a beginner. Have a messy project already? The Codebase Fixer Agent kit in the [All 5 Kits bundle](https://getvibekits.com/bundle) is built for that.

### Explain this project to me

```text
Explain this project to me like I'm new to it:
- What each top-level folder is for
- Where the main page, the database code and the login code live
- How to run it
Keep it under 20 lines. Don't change anything.
```

Claude Code's docs suggest asking the agent the same questions you'd ask a senior engineer when you're new to a codebase.

## 7. Launch and deploy

### Pre-launch checklist

```text
Go through this list one item at a time and tell me pass or fail:
1. No secret keys in front-end code or committed .env files
2. Every page has a title and a meta description
3. Forms show a clear error when something goes wrong
4. It works on a phone-sized screen
5. The production build finishes with no errors
Don't fix anything until I say which items to fix.
```

Pass/fail per item turns "is it ready?" into a short to-do list.

### Walk me through deploying

```text
I want to put this online on [host]. Walk me through it one step at a time and wait for me to say "done" before the next step.
List every environment variable the app needs, and mark which ones are secret and must never go in front-end code.
```

One step at a time is just as important for deploying as for building, and the environment variable list is where most first deploys break.

## 8. Save credits and keep the chat fresh

### Summarize for a fresh chat

```text
Summarize this project for a new chat in under 200 words:
- What we're building and the stack
- What's done and working
- What's next
- Known bugs and decisions we made
I'll paste this into a fresh conversation.
```

Long chats get forgetful. Bolt's docs suggest asking for a summary, then resetting the chat history; Claude Code has `/clear` for the same reason. More ways to spend less: [Lovable credits and Bolt tokens explained](https://getvibekits.com/rules/lovable-credits-explained/?utm_source=github&utm_medium=prompts).

## Rules files: the prompt you'd otherwise repeat

Put your standing instructions in a rules file once instead of pasting them into every chat. This repo has free `AGENTS.md`, `CLAUDE.md` and Cursor rules for 20 project types ([back to the list](../README.md)), and the [free rules generator](https://getvibekits.com/rules/generator/?utm_source=github&utm_medium=prompts) builds a custom one in your browser.
