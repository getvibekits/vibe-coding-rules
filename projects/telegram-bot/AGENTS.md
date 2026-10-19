# AGENTS.md: Telegram bot

Instructions for AI coding agents working on this project. Replace anything in [brackets].

## Project
- What it is: [one sentence: what you are building and who it is for]
- Stack: Python 3, python-telegram-bot (async, v20+), long polling for v1
- Version 1 only needs to: [the ONE thing it must do]

## Commands
- Create a virtual environment: `python3 -m venv .venv && source .venv/bin/activate`
- Install: `pip install -r requirements.txt`
- Run: `python bot.py`

## Project rules
- The bot token from @BotFather lives only in .env as TELEGRAM_BOT_TOKEN. Never print or commit it.
- Use python-telegram-bot's async API (v20 or later). Don't use the old v13 Updater/Dispatcher style.
- Use long polling (run_polling) for v1. Ask before switching to webhooks.
- One handler function per command. Register all handlers in one place in bot.py.
- Pin library versions in requirements.txt.
- Don't store user messages unless I ask. If we store anything, tell me what and where.

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
