# AGENTS.md: Lovable website (SEO)

Instructions for AI coding agents working on this project. Replace anything in [brackets].

## Project
- What it is: [one sentence: what you are building and who it is for]
- Stack: A Lovable website or landing page (newer projects render on the server; older ones are React + Vite)
- Version 1 only needs to: [the ONE thing it must do]

## Project rules
- Every page gets a unique title (under 60 characters) and meta description (under 160), written for the search that page should win.
- One h1 per page, then h2 and h3 in order. Headings and key text are real text, never baked into images.
- Main page content must load with the page, not after a click, a tab switch, or a slow data fetch.
- Every image gets descriptive alt text and is compressed and sized for how it's displayed.
- When we add a page, update the sitemap and link to it from at least one other page.
- Ask before adding popups, carousels, or animations that hide or delay the main content.

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
