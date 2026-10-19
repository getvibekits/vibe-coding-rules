# AGENTS.md: Inbox / email AI agent

Instructions for AI coding agents working on this project. Replace anything in [brackets].

## Project
- What it is: [one sentence: what you are building and who it is for]
- Stack: Python or Node, Gmail API (OAuth), an LLM API for classification
- Version 1 only needs to: [the ONE thing it must do]

## Commands
- Test on a small batch: `python triage.py --dry-run --limit 20`
- Run for real (labels only): `python triage.py --limit 50`

## Project rules
- The agent may add labels and create drafts. It must never delete, archive, send, or forward email unless I add that later on purpose.
- Ask for the narrowest Gmail OAuth scope that does the job.
- credentials.json and token.json (or equivalents) are in .gitignore and never printed.
- Every run supports --dry-run and --limit. Default to a small limit.
- The classifier returns strict JSON with a fixed label list. Anything unparseable goes to a "Needs review" label.
- Set a max number of LLM calls per run and print the count at the end.

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
