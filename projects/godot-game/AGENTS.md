# AGENTS.md: Godot game

Instructions for AI coding agents working on this project. Replace anything in [brackets].

## Project
- What it is: [one sentence: what you are building and who it is for]
- Stack: Godot 4, GDScript, scenes (.tscn) and resources (.tres)
- Version 1 only needs to: [the ONE thing it must do]

## Commands
- Run the game: Open the project in Godot 4 and press F5 (or the Play button)
- Run the current scene: F6 in the editor

## Project rules
- This is a Godot 4 project. Use Godot 4 GDScript syntax and APIs only (for example CharacterBody2D, not KinematicBody2D).
- Prefer telling me which nodes to add in the editor. If you edit .tscn or .tres files as text, change only what's needed and tell me to reload the scene.
- One script per node that needs behavior. Keep scripts next to their scenes.
- Use signals for communication between nodes instead of hard-coded paths like get_node("../../Player") where possible.
- Put tunable values in @export variables so I can change them in the Inspector.
- The .godot/ folder is generated. Never edit it and keep it in .gitignore.

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
