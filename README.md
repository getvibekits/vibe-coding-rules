# Vibe Coding Rules

Free, copy-paste **AGENTS.md**, **CLAUDE.md** and **Cursor rules** (`.cursor/rules/*.mdc`) for 30 beginner project types: games, bots, web apps, websites, mobile apps, scripts, AI agents and backends, plus sets made for Lovable, Bolt, Replit Agent and Base44 projects.

Each set gives your AI coding tool (Claude Code, Cursor, OpenAI Codex, GitHub Copilot, Lovable, Bolt) the same working rules: one task at a time, a short plan before code, the smallest change that works, secrets kept out of code, no destructive commands without asking, plus 6 rules specific to the stack.

Browse the full library, with an explanation of why each rule exists, at **[getvibekits.com/rules](https://getvibekits.com/rules/?utm_source=github)**, or build a custom file in the free **[rules generator](https://getvibekits.com/rules/generator/?utm_source=github)** (runs in your browser, no signup).

## What's inside

| Format | Folder | What you get |
|---|---|---|
| `AGENTS.md` + `CLAUDE.md` + `.cursor/rules` | [projects/](#project-types) | Full rule sets for 30 beginner project types (table below) |
| Cursor rules (`.mdc`) | [cursor-rules-examples/](cursor-rules-examples/) | 10 examples covering all four rule types: always on, file globs, apply intelligently and manual |
| `AGENTS.md` | [agents-md/](agents-md/) | 8 examples: minimal, Next.js + TypeScript, Python, TypeScript library, Spring Boot, monorepo, global Codex file, Codex override |
| `copilot-instructions.md` | [copilot-instructions/](copilot-instructions/) | 7 examples for GitHub Copilot, including path-specific `.instructions.md` files with `applyTo` |
| Claude Code skills (`SKILL.md`) | [skills/](skills/) | 7 skills: explain an error, add a page, commit, review changes, design rules, database safety, SEO check |
| Prompts | [prompts/vibe-coding-prompts.md](prompts/vibe-coding-prompts.md) | 21 copy-paste prompts for planning, building, fixing errors, security checks and deploying |
| Plan mode prompts | [prompts/plan-mode-prompts.md](prompts/plan-mode-prompts.md) | How to turn on plan mode in 6 tools, plus 6 copy-paste plan prompts |
| Custom slash commands | [commands/](commands/) | 7 copy-paste commands for Claude Code and Cursor: plan a feature, explain an error, write tests, fix lint, security check, commit message, explain a file |
| Claude Code hooks | [hooks/](hooks/) | 7 copy-paste hooks: desktop alerts, format on edit, block `.env` edits, block risky commands, reminders after compaction, a command log, a "finish the job" check, plus a Cursor `hooks.json` |

## Quick start

1. Find your project type in the table below.
2. Copy its `AGENTS.md` into the root of your project and fill in the `[brackets]`.
3. Using Claude Code? Also copy `CLAUDE.md` (it just imports `AGENTS.md`).
4. Prefer Cursor Project Rules? Copy the `.cursor/rules/` folder instead of `AGENTS.md`.
5. Commit the files, so every session (and every teammate) gets the same rules.

## Project types

| Category | Project | Stack the rules assume | Files | Live page |
|---|---|---|---|---|
| Games | **Browser game (Phaser)** | Phaser 3 + Vite, JavaScript or TypeScript, runs in the browser | [AGENTS.md](projects/browser-game-phaser/AGENTS.md) · [CLAUDE.md](projects/browser-game-phaser/CLAUDE.md) · [core.mdc](projects/browser-game-phaser/.cursor/rules/core.mdc) · [browser-game-phaser.mdc](projects/browser-game-phaser/.cursor/rules/browser-game-phaser.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/browser-game-phaser/?utm_source=github) |
| Games | **Godot game** | Godot 4, GDScript, scenes (.tscn) and resources (.tres) | [AGENTS.md](projects/godot-game/AGENTS.md) · [CLAUDE.md](projects/godot-game/CLAUDE.md) · [core.mdc](projects/godot-game/.cursor/rules/core.mdc) · [godot-game.mdc](projects/godot-game/.cursor/rules/godot-game.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/godot-game/?utm_source=github) |
| Bots | **Discord bot** | Node.js (LTS), discord.js v14, slash commands | [AGENTS.md](projects/discord-bot/AGENTS.md) · [CLAUDE.md](projects/discord-bot/CLAUDE.md) · [core.mdc](projects/discord-bot/.cursor/rules/core.mdc) · [discord-bot.mdc](projects/discord-bot/.cursor/rules/discord-bot.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/discord-bot/?utm_source=github) |
| Bots | **Telegram bot** | Python 3, python-telegram-bot (async, v20+), long polling for v1 | [AGENTS.md](projects/telegram-bot/AGENTS.md) · [CLAUDE.md](projects/telegram-bot/CLAUDE.md) · [core.mdc](projects/telegram-bot/.cursor/rules/core.mdc) · [telegram-bot.mdc](projects/telegram-bot/.cursor/rules/telegram-bot.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/telegram-bot/?utm_source=github) |
| Web apps | **Lovable app** | Lovable (React + Tailwind front end, Lovable Cloud / Supabase back end) | [AGENTS.md](projects/lovable-app/AGENTS.md) · [CLAUDE.md](projects/lovable-app/CLAUDE.md) · [core.mdc](projects/lovable-app/.cursor/rules/core.mdc) · [lovable-app.mdc](projects/lovable-app/.cursor/rules/lovable-app.mdc) · [Lovable/Bolt Knowledge](projects/lovable-app/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/lovable-app/?utm_source=github) |
| Web apps | **Next.js SaaS MVP** | Next.js (App Router), TypeScript, a hosted auth provider, Stripe for payments | [AGENTS.md](projects/nextjs-saas-mvp/AGENTS.md) · [CLAUDE.md](projects/nextjs-saas-mvp/CLAUDE.md) · [core.mdc](projects/nextjs-saas-mvp/.cursor/rules/core.mdc) · [nextjs-saas-mvp.mdc](projects/nextjs-saas-mvp/.cursor/rules/nextjs-saas-mvp.mdc) · [Lovable/Bolt Knowledge](projects/nextjs-saas-mvp/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/nextjs-saas-mvp/?utm_source=github) |
| Web apps | **Supabase app** | Supabase (Postgres, Auth, Storage), any front end | [AGENTS.md](projects/supabase-app/AGENTS.md) · [CLAUDE.md](projects/supabase-app/CLAUDE.md) · [core.mdc](projects/supabase-app/.cursor/rules/core.mdc) · [supabase-app.mdc](projects/supabase-app/.cursor/rules/supabase-app.mdc) · [Lovable/Bolt Knowledge](projects/supabase-app/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/supabase-app/?utm_source=github) |
| Web apps | **Online store (Stripe)** | Any web front end, Stripe Checkout, a webhook endpoint for orders | [AGENTS.md](projects/online-store-stripe/AGENTS.md) · [CLAUDE.md](projects/online-store-stripe/CLAUDE.md) · [core.mdc](projects/online-store-stripe/.cursor/rules/core.mdc) · [online-store-stripe.mdc](projects/online-store-stripe/.cursor/rules/online-store-stripe.mdc) · [Lovable/Bolt Knowledge](projects/online-store-stripe/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/online-store-stripe/?utm_source=github) |
| Web apps | **Fixing a messy vibe-coded project** | Any existing project that "mostly works" | [AGENTS.md](projects/existing-codebase-cleanup/AGENTS.md) · [CLAUDE.md](projects/existing-codebase-cleanup/CLAUDE.md) · [core.mdc](projects/existing-codebase-cleanup/.cursor/rules/core.mdc) · [existing-codebase-cleanup.mdc](projects/existing-codebase-cleanup/.cursor/rules/existing-codebase-cleanup.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/existing-codebase-cleanup/?utm_source=github) |
| Web apps | **Lovable Project Knowledge** | Any Lovable project. These rules go in Project settings → Knowledge | [AGENTS.md](projects/lovable-project-knowledge/AGENTS.md) · [CLAUDE.md](projects/lovable-project-knowledge/CLAUDE.md) · [core.mdc](projects/lovable-project-knowledge/.cursor/rules/core.mdc) · [lovable-project-knowledge.mdc](projects/lovable-project-knowledge/.cursor/rules/lovable-project-knowledge.mdc) · [Lovable/Bolt Knowledge](projects/lovable-project-knowledge/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/lovable-project-knowledge/?utm_source=github) |
| Web apps | **Lovable + Supabase app** | Lovable with its built-in backend (Cloud, built on Supabase) or your own connected Supabase project | [AGENTS.md](projects/lovable-supabase-app/AGENTS.md) · [CLAUDE.md](projects/lovable-supabase-app/CLAUDE.md) · [core.mdc](projects/lovable-supabase-app/.cursor/rules/core.mdc) · [lovable-supabase-app.mdc](projects/lovable-supabase-app/.cursor/rules/lovable-supabase-app.mdc) · [Lovable/Bolt Knowledge](projects/lovable-supabase-app/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/lovable-supabase-app/?utm_source=github) |
| Web apps | **Lovable SaaS app** | Lovable + built-in backend (Cloud) + built-in payments (or your own Stripe account) | [AGENTS.md](projects/lovable-saas-app/AGENTS.md) · [CLAUDE.md](projects/lovable-saas-app/CLAUDE.md) · [core.mdc](projects/lovable-saas-app/.cursor/rules/core.mdc) · [lovable-saas-app.mdc](projects/lovable-saas-app/.cursor/rules/lovable-saas-app.mdc) · [Lovable/Bolt Knowledge](projects/lovable-saas-app/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/lovable-saas-app/?utm_source=github) |
| Web apps | **Lovable + Cursor / Claude Code (GitHub sync)** | A Lovable project with two-way GitHub sync, edited both in Lovable and locally (Cursor, Claude Code, Codex) | [AGENTS.md](projects/lovable-to-cursor-claude-code/AGENTS.md) · [CLAUDE.md](projects/lovable-to-cursor-claude-code/CLAUDE.md) · [core.mdc](projects/lovable-to-cursor-claude-code/.cursor/rules/core.mdc) · [lovable-to-cursor-claude-code.mdc](projects/lovable-to-cursor-claude-code/.cursor/rules/lovable-to-cursor-claude-code.mdc) · [Lovable/Bolt Knowledge](projects/lovable-to-cursor-claude-code/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/lovable-to-cursor-claude-code/?utm_source=github) |
| Web apps | **Bolt.new app** | Bolt (web app or site), using Bolt Database by default | [AGENTS.md](projects/bolt-new-app/AGENTS.md) · [CLAUDE.md](projects/bolt-new-app/CLAUDE.md) · [core.mdc](projects/bolt-new-app/.cursor/rules/core.mdc) · [bolt-new-app.mdc](projects/bolt-new-app/.cursor/rules/bolt-new-app.mdc) · [Lovable/Bolt Knowledge](projects/bolt-new-app/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/bolt-new-app/?utm_source=github) |
| Web apps | **Bolt + Supabase app** | Bolt + Supabase (database, sign-in, edge functions). Supabase in Bolt needs a Pro or Teams plan | [AGENTS.md](projects/bolt-supabase-app/AGENTS.md) · [CLAUDE.md](projects/bolt-supabase-app/CLAUDE.md) · [core.mdc](projects/bolt-supabase-app/.cursor/rules/core.mdc) · [bolt-supabase-app.mdc](projects/bolt-supabase-app/.cursor/rules/bolt-supabase-app.mdc) · [Lovable/Bolt Knowledge](projects/bolt-supabase-app/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/bolt-supabase-app/?utm_source=github) |
| Web apps | **Replit Agent app (replit.md)** | Replit Agent (web apps, bots, scripts, APIs), with persistent rules in replit.md | [AGENTS.md](projects/replit-agent-app/AGENTS.md) · [CLAUDE.md](projects/replit-agent-app/CLAUDE.md) · [core.mdc](projects/replit-agent-app/.cursor/rules/core.mdc) · [replit-agent-app.mdc](projects/replit-agent-app/.cursor/rules/replit-agent-app.mdc) · [replit.md](projects/replit-agent-app/replit.md) | [Page + why each rule exists](https://getvibekits.com/rules/replit-agent-app/?utm_source=github) |
| Web apps | **Base44 app** | Base44 (AI app builder), rules in the app's Custom Instructions | [AGENTS.md](projects/base44-app/AGENTS.md) · [CLAUDE.md](projects/base44-app/CLAUDE.md) · [core.mdc](projects/base44-app/.cursor/rules/core.mdc) · [base44-app.mdc](projects/base44-app/.cursor/rules/base44-app.mdc) · [Base44 instructions](projects/base44-app/base44-instructions.txt) | [Page + why each rule exists](https://getvibekits.com/rules/base44-app/?utm_source=github) |
| Websites | **Chrome extension** | Manifest V3, plain JavaScript, content scripts + service worker | [AGENTS.md](projects/chrome-extension/AGENTS.md) · [CLAUDE.md](projects/chrome-extension/CLAUDE.md) · [core.mdc](projects/chrome-extension/.cursor/rules/core.mdc) · [chrome-extension.mdc](projects/chrome-extension/.cursor/rules/chrome-extension.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/chrome-extension/?utm_source=github) |
| Websites | **Landing page** | One static page: HTML + CSS (or Tailwind), a hosted form for signups | [AGENTS.md](projects/landing-page/AGENTS.md) · [CLAUDE.md](projects/landing-page/CLAUDE.md) · [core.mdc](projects/landing-page/.cursor/rules/core.mdc) · [landing-page.mdc](projects/landing-page/.cursor/rules/landing-page.mdc) · [Lovable/Bolt Knowledge](projects/landing-page/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/landing-page/?utm_source=github) |
| Websites | **Portfolio site** | Astro (static output), Markdown for project write-ups | [AGENTS.md](projects/portfolio-site/AGENTS.md) · [CLAUDE.md](projects/portfolio-site/CLAUDE.md) · [core.mdc](projects/portfolio-site/.cursor/rules/core.mdc) · [portfolio-site.mdc](projects/portfolio-site/.cursor/rules/portfolio-site.mdc) · [Lovable/Bolt Knowledge](projects/portfolio-site/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/portfolio-site/?utm_source=github) |
| Websites | **Lovable website (SEO)** | A Lovable website or landing page (newer projects render on the server; older ones are React + Vite) | [AGENTS.md](projects/lovable-website-seo/AGENTS.md) · [CLAUDE.md](projects/lovable-website-seo/CLAUDE.md) · [core.mdc](projects/lovable-website-seo/.cursor/rules/core.mdc) · [lovable-website-seo.mdc](projects/lovable-website-seo/.cursor/rules/lovable-website-seo.mdc) · [Lovable/Bolt Knowledge](projects/lovable-website-seo/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/lovable-website-seo/?utm_source=github) |
| Mobile | **Mobile app (Expo)** | Expo (React Native), TypeScript, Expo Router, tested in Expo Go | [AGENTS.md](projects/expo-mobile-app/AGENTS.md) · [CLAUDE.md](projects/expo-mobile-app/CLAUDE.md) · [core.mdc](projects/expo-mobile-app/.cursor/rules/core.mdc) · [expo-mobile-app.mdc](projects/expo-mobile-app/.cursor/rules/expo-mobile-app.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/expo-mobile-app/?utm_source=github) |
| Mobile | **Bolt mobile app (Expo)** | Bolt + Expo (React Native) for iPhone and Android | [AGENTS.md](projects/bolt-mobile-app-expo/AGENTS.md) · [CLAUDE.md](projects/bolt-mobile-app-expo/CLAUDE.md) · [core.mdc](projects/bolt-mobile-app-expo/.cursor/rules/core.mdc) · [bolt-mobile-app-expo.mdc](projects/bolt-mobile-app-expo/.cursor/rules/bolt-mobile-app-expo.mdc) · [Lovable/Bolt Knowledge](projects/bolt-mobile-app-expo/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/bolt-mobile-app-expo/?utm_source=github) |
| Automation & scripts | **Python automation script** | Python 3, a virtual environment, standard library first | [AGENTS.md](projects/python-automation-script/AGENTS.md) · [CLAUDE.md](projects/python-automation-script/CLAUDE.md) · [core.mdc](projects/python-automation-script/.cursor/rules/core.mdc) · [python-automation-script.mdc](projects/python-automation-script/.cursor/rules/python-automation-script.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/python-automation-script/?utm_source=github) |
| Automation & scripts | **Web scraper** | Python 3, requests + Beautiful Soup (a headless browser only if truly needed) | [AGENTS.md](projects/web-scraper/AGENTS.md) · [CLAUDE.md](projects/web-scraper/CLAUDE.md) · [core.mdc](projects/web-scraper/.cursor/rules/core.mdc) · [web-scraper.mdc](projects/web-scraper/.cursor/rules/web-scraper.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/web-scraper/?utm_source=github) |
| Automation & scripts | **Google Sheets automation (Apps Script)** | Google Apps Script bound to a Google Sheet (optional: clasp for local editing) | [AGENTS.md](projects/google-sheets-apps-script/AGENTS.md) · [CLAUDE.md](projects/google-sheets-apps-script/CLAUDE.md) · [core.mdc](projects/google-sheets-apps-script/.cursor/rules/core.mdc) · [google-sheets-apps-script.mdc](projects/google-sheets-apps-script/.cursor/rules/google-sheets-apps-script.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/google-sheets-apps-script/?utm_source=github) |
| AI agents & apps | **Inbox / email AI agent** | Python or Node, Gmail API (OAuth), an LLM API for classification | [AGENTS.md](projects/inbox-ai-agent/AGENTS.md) · [CLAUDE.md](projects/inbox-ai-agent/CLAUDE.md) · [core.mdc](projects/inbox-ai-agent/.cursor/rules/core.mdc) · [inbox-ai-agent.mdc](projects/inbox-ai-agent/.cursor/rules/inbox-ai-agent.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/inbox-ai-agent/?utm_source=github) |
| AI agents & apps | **AI chatbot app** | Web front end + a small server route that calls an LLM API | [AGENTS.md](projects/ai-chatbot-app/AGENTS.md) · [CLAUDE.md](projects/ai-chatbot-app/CLAUDE.md) · [core.mdc](projects/ai-chatbot-app/.cursor/rules/core.mdc) · [ai-chatbot-app.mdc](projects/ai-chatbot-app/.cursor/rules/ai-chatbot-app.mdc) · [Lovable/Bolt Knowledge](projects/ai-chatbot-app/lovable-bolt-knowledge.txt) | [Page + why each rule exists](https://getvibekits.com/rules/ai-chatbot-app/?utm_source=github) |
| Backend & data | **Data dashboard** | Python 3, Streamlit, pandas, data from CSV or a read-only source | [AGENTS.md](projects/data-dashboard/AGENTS.md) · [CLAUDE.md](projects/data-dashboard/CLAUDE.md) · [core.mdc](projects/data-dashboard/.cursor/rules/core.mdc) · [data-dashboard.mdc](projects/data-dashboard/.cursor/rules/data-dashboard.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/data-dashboard/?utm_source=github) |
| Backend & data | **API backend (FastAPI)** | Python 3, FastAPI, Pydantic models, pytest | [AGENTS.md](projects/api-backend/AGENTS.md) · [CLAUDE.md](projects/api-backend/CLAUDE.md) · [core.mdc](projects/api-backend/.cursor/rules/core.mdc) · [api-backend.mdc](projects/api-backend/.cursor/rules/api-backend.mdc) | [Page + why each rule exists](https://getvibekits.com/rules/api-backend/?utm_source=github) |

Different stack? Pick the closest project in the [generator](https://getvibekits.com/rules/generator/?utm_source=github), toggle rules on or off, and download the file in the format you need.

## AGENTS.md vs CLAUDE.md vs .cursor/rules

| File | Read by | Use it when |
|---|---|---|
| `AGENTS.md` (project root) | OpenAI Codex, Cursor, GitHub Copilot, current Claude Code versions (when there's no `CLAUDE.md`), Lovable, and other tools that follow [agents.md](https://agents.md) | Default choice. One file that most tools read. |
| `CLAUDE.md` (project root) | Claude Code | You use Claude Code. The `CLAUDE.md` here is one line, `@AGENTS.md`, which imports the shared file, plus a Claude-only extra. Keep one source of truth; two separate copies drift apart. |
| `.cursor/rules/*.mdc` | Cursor | You want Cursor's own Project Rules: `core.mdc` is always on (`alwaysApply: true`), and `<project>.mdc` attaches only when matching files are in the chat (`globs`). Use these *or* `AGENTS.md` in Cursor, not both, so the same rules aren't sent twice. |

Notes:
- If a project has both files and `CLAUDE.md` doesn't import `AGENTS.md`, Claude Code reads only `CLAUDE.md`. Run `/memory` in Claude Code to see what loaded.
- Cursor ignores plain `.md` files in `.cursor/rules/`. The `.mdc` extension and the frontmatter block are required.
- More detail: [rules file formats explained](https://getvibekits.com/rules/formats/?utm_source=github), [AGENTS.md vs CLAUDE.md](https://getvibekits.com/rules/agents-md-vs-claude-md/?utm_source=github), [Cursor rules vs AGENTS.md](https://getvibekits.com/rules/cursor-rules-vs-agents-md/?utm_source=github).

## Repo layout

```
projects/<project>/AGENTS.md
projects/<project>/CLAUDE.md
projects/<project>/.cursor/rules/core.mdc
projects/<project>/.cursor/rules/<project>.mdc
projects/<project>/lovable-bolt-knowledge.txt   (projects that fit Lovable or Bolt)
rules/<project>-core.mdc, rules/<project>.mdc  (the same Cursor rules, flat, in the Open Plugins layout)
.cursor-plugin/plugin.json                      (plugin manifest for Cursor)
```

The files in `projects/` are identical to the ones on the matching page at getvibekits.com/rules.

## Stay updated

New rules and project types go out in the free VibeKits newsletter: [sign up at getvibekits.com](https://getvibekits.com/?utm_source=github).

## Contributing

Fixes and suggestions are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

[MIT](LICENSE). Copy, change and ship these files in any project, commercial or not.
