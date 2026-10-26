#!/bin/bash
# format.sh: run Prettier on the file the Agent just edited
FILE_PATH=$(jq -r '.file_path // empty')
if [ -n "$FILE_PATH" ]; then
  npx prettier --write "$FILE_PATH" > /dev/null 2>&1
fi
exit 0
