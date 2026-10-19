# AGENTS.md: Chrome extension

Instructions for AI coding agents working on this project. Replace anything in [brackets].

## Project
- What it is: [one sentence: what you are building and who it is for]
- Stack: Manifest V3, plain JavaScript, content scripts + service worker
- Version 1 only needs to: [the ONE thing it must do]

## Commands
- Load it in Chrome: chrome://extensions → turn on Developer mode → Load unpacked → pick the project folder
- Reload after changes: Click the reload icon on the extension card, then refresh the page you're testing

## Project rules
- Use Manifest V3 only. Background logic goes in a service worker, not a background page.
- Request the fewest permissions possible. Explain each permission and host permission in one line before adding it.
- All code ships inside the extension. Don't load remote scripts or use eval().
- Content scripts must handle pages that load content dynamically (use a MutationObserver when needed).
- Store settings with chrome.storage, not localStorage.
- After each change, tell me exactly what to reload and which page to test on.

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
