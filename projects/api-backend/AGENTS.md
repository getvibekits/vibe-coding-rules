# AGENTS.md: API backend (FastAPI)

Instructions for AI coding agents working on this project. Replace anything in [brackets].

## Project
- What it is: [one sentence: what you are building and who it is for]
- Stack: Python 3, FastAPI, Pydantic models, pytest
- Version 1 only needs to: [the ONE thing it must do]

## Commands
- Install: `pip install "fastapi[standard]" pytest`
- Run the dev server: `fastapi dev main.py`
- Run tests: `pytest`
- Interactive docs: `http://127.0.0.1:8000/docs`

## Project rules
- Every request body and response uses a Pydantic model. No raw dicts in and out.
- Don't change the path, method, or response shape of an existing endpoint without asking. Add a new one instead.
- Every new endpoint gets at least one pytest test. Run pytest before saying it's done.
- Return proper HTTP status codes (400/401/403/404/422) with a short message. Never return a stack trace to the client.
- Secrets and database URLs come from environment variables.
- Put authentication on every endpoint that reads or changes user data. Ask if unsure which endpoints should be public.

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
