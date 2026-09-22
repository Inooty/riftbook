#! /bin/bash
# Temporary Check
echo "I'm running!"

# Check for Hardware
cd "$(dirname "$0")/Phases/0 Detection"
bash detect.sh