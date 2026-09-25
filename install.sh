#! /bin/bash

# Script Home
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Install Rich
pkg install -y python >/dev/null 2>&1 &
INSTALL_PID=$!

# ASCII
cat Assets/logo.txt
sleep 2

# Pid Verification
wait $INSTALL_PID
pip install rich

# Termux Warning
if command -v pkg >/dev/null 2>&1; then
    echo "Installing..."
else
    echo "This script does not appear to be running inside Termux. Exiting..."
    exit 1
fi

# Python Handoff (Very Crude And Dumb)
python3 "$SCRIPT_DIR/Phases/status.py" "$SCRIPT_DIR"