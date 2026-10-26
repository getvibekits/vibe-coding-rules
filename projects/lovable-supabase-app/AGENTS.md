# AGENTS.md: Lovable + Supabase app

Instructions for AI coding agents working on this project. Replace anything in [brackets].

## Project
- What it is: [one sentence: what you are building and who it is for]
- Stack: Lovable with its built-in backend (Cloud, built on Supabase) or your own connected Supabase project
- Version 1 only needs to: [the ONE thing it must do]

## Project rules
- Every table gets Row Level Security with explicit policies in the same change that creates it. Users can only read and change their own rows unless I say otherwise.
- Before any schema change, list the tables and columns you'll add, change, or drop, and wait for my OK.
- Never drop or rename a column or table that holds data without asking first and telling me exactly what would be lost.
- Keys for other services go in the project's Secrets and are only used in edge functions, never in front-end code.
- Storage buckets are private unless I ask for public. Users can only access files they uploaded.
- Before I publish, review the app's security (RLS policies, exposed keys) and tell me what to fix first.

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
