# AGENTS.md

## Project
A Python script that reads new rows from a CSV export and emails me a daily summary.
Python 3.12. Code in src/, tests in tests/.

## Setup commands
- Create the environment: python -m venv .venv
- Install: pip install -r requirements.txt
- Run: python -m src.main
- Test: pytest

## Code style
- Type hints on every function. Small functions with clear names.
- Use pathlib for file paths and logging instead of print.
- Read secrets from environment variables (.env is in .gitignore). Never hard-code them.

## Testing instructions
- Add or update a test in tests/ for every change.
- Don't call real email or outside APIs in tests. Mock them.
- Run pytest before you say a task is done.
