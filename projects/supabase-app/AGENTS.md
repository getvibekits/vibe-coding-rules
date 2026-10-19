# AGENTS.md: Supabase app

Instructions for AI coding agents working on this project. Replace anything in [brackets].

## Project
- What it is: [one sentence: what you are building and who it is for]
- Stack: Supabase (Postgres, Auth, Storage), any front end
- Version 1 only needs to: [the ONE thing it must do]

## Commands
- Start the local stack (needs Docker): `supabase start`
- Create a migration: `supabase migration new <name>`
- Apply migrations to the linked project: `supabase db push`

## Project rules
- Turn on Row Level Security for every table in the same migration that creates it, with explicit policies.
- The service_role / secret key is server-only (backend, edge functions, scripts). The front end only ever uses the anon / publishable key.
- Every schema change is a migration file. Never change the production database by hand or with ad-hoc SQL unless I ask.
- Ask before any migration that drops or renames a column or table.
- Storage buckets are private by default. Ask before making one public.
- When you add a query, say which RLS policy allows it.

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
