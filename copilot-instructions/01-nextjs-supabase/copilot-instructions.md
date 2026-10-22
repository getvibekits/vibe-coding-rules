# Project overview
A habit tracker web app for beginners. Users sign up, add habits and tick them off each day.
Built with Next.js (App Router), TypeScript, Tailwind CSS and Supabase (database and auth).

## How to work in this repo
- Work in small steps. After each change, tell me how to test it in the browser.
- Ask before changing the database schema, auth or anything to do with payments.
- Never put secret keys in front-end code. Only NEXT_PUBLIC_ variables may be used in the browser.
- Explain errors in plain English before fixing them.

## Coding standards
- TypeScript for all new files. Function components only.
- Reuse components in src/components before creating new ones.
- Use Tailwind classes. No inline styles.

## Build and test
- Install: npm install
- Run locally: npm run dev
- Check before committing: npm run lint and npm run build
