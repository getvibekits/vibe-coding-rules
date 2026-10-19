# AGENTS.md: Mobile app (Expo)

Instructions for AI coding agents working on this project. Replace anything in [brackets].

## Project
- What it is: [one sentence: what you are building and who it is for]
- Stack: Expo (React Native), TypeScript, Expo Router, tested in Expo Go
- Version 1 only needs to: [the ONE thing it must do]

## Commands
- Create the project: `npx create-expo-app@latest`
- Start the dev server: `npx expo start`
- Add a package (picks a compatible version): `npx expo install <package>`

## Project rules
- Install packages with npx expo install, not npm install, so versions match our Expo SDK.
- Screens live in the app/ folder (Expo Router file-based routes). One screen per file.
- Anything in the app bundle is public, including EXPO_PUBLIC_ variables. Secret keys stay on a server.
- Stick to packages that work in Expo Go for v1. Ask before adding anything that needs a development build.
- Test each change on a real phone with Expo Go, and say what to tap to check it.
- Handle loading and error states on every screen that fetches data.

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
