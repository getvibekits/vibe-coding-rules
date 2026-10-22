# Project overview
A Python script that reads a CSV of orders and emails a daily summary.
Python 3.12. Dependencies are in requirements.txt.

## Rules
- Keep it as a simple script. No classes unless I ask.
- Read settings and passwords from environment variables, never hard-code them.
- Every function gets a one-line docstring in plain English.
- Print clear messages when something goes wrong, saying which row or file caused it.

## Run and test
- Install: pip install -r requirements.txt
- Run: python main.py --dry-run (prints the email instead of sending it)
- Test: pytest
