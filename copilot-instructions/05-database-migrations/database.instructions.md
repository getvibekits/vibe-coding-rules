---
applyTo: "supabase/migrations/**"
---
- Every migration must be safe to run once on a database that already has real users.
- Never drop a table or column, or turn off row-level security, without saying so in plain English first.
- Every new table gets row-level security turned on, with a policy so users can only see their own rows.
