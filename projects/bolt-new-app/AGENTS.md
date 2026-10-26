# AGENTS.md: Bolt.new app

Instructions for AI coding agents working on this project. Replace anything in [brackets].

## Project
- What it is: [one sentence: what you are building and who it is for]
- Stack: Bolt (web app or site), using Bolt Database by default
- Version 1 only needs to: [the ONE thing it must do]

## Project rules
- One feature or fix per message. If I ask for several, list them and build only the first.
- For anything bigger than a small change, outline the plan first and don't build until I say go.
- Only edit the files the change needs. Leave locked files alone and tell me if a change needs one of them.
- Use Bolt Database unless I say otherwise. Ask before switching databases or adding a new backend service.
- Secret keys live in the project's secrets and server functions, never in front-end code.
- If something breaks, explain the cause in one sentence before fixing it. Don't try the same fix twice.

## How to work
- Do one task per request. If my request is really several tasks, list them and do only the first.
- Before writing code, give a 3-line plan: what you'll change, which files, and how I'll test it.
- Make the smallest change that works. Don't refactor, rename, or reformat code I didn't ask about.
- Ask before adding a dependency, deleting or moving files, changing the data/database structure, or touching more than 3 files.
- If you're not sure a library, API, or setting exists in the version we use, say so and check the installed package or the docs instead of guessing.
- Never say something works unless you ran it or I confirmed it. Report errors exactly.
- Secrets (API keys, tokens, passwords) live only in environment variables or a .env file listed in .gitignore. Never print, hardcode, or commit them.
- Never run destructive commands (rm -rf, git reset --hard, force-push, dropping tables) without asking first.

## Finish every task with
1. What changed (list the files).
2. How to run or test it in under a minute, and what I should see.
3. A suggested git commit message.
