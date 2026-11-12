
#!/bin/bash
set -e

FREQ_RESULT="$1"
GITHUB_USER="$2"
TIMESTAMP=$(date -u '+%Y-%m-%d %H:%M:%S UTC')

printf '\n- **Contributor:** %s\n  - **Vowel frequencies:** %s\n  - **Timestamp:** %s\n' \
    "$GITHUB_USER" "$FREQ_RESULT" "$TIMESTAMP" >> README.md

echo "README updated successfully."
