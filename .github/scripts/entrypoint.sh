
#!/bin/bash
set -e

echo "Starting Frequency Analyzer..."

FILE="${FILE:-data.txt}"
GITHUB_USER="${GITHUB_USER:-${GITHUB_ACTOR:-unknown}}"

FREQ_RESULT=$(python3 /app/scripts/frequency.py "$FILE")

echo "Vowel frequencies: $FREQ_RESULT"

bash /app/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Process Completed!"
