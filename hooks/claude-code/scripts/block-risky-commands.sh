#!/bin/bash
# block-risky-commands.sh: stop a few commands a beginner never wants run by surprise

INPUT=$(cat)
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty')

BLOCKED=("rm -rf" "git push --force" "git reset --hard" "drop table" "DROP TABLE")

for pattern in "${BLOCKED[@]}"; do
  if [[ "$COMMAND" == *"$pattern"* ]]; then
    echo "Blocked: '$pattern' is not allowed here. Explain what you wanted to do and ask me first." >&2
    exit 2
  fi
done

exit 0
