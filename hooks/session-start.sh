#!/bin/bash
# Janna SessionStart: restore project state
STATUS_FILE="docs/JANNA-STATUS.md"

if [ ! -f "$STATUS_FILE" ]; then
    exit 0
fi

echo "## Janna Project Detected"
echo ""
echo "An in-progress Janna project exists. Read docs/JANNA-STATUS.md before doing any product development work."
echo ""

# Extract current phase if present
PHASE=$(grep -m1 "^Phase " "$STATUS_FILE" 2>/dev/null || grep -m1 "## Current Phase" -A2 "$STATUS_FILE" 2>/dev/null | tail -1)
if [ -n "$PHASE" ]; then
    echo "Current phase: $PHASE"
fi

# Extract complexity mode if present
MODE=$(grep -m1 "Standard\|Full" "$STATUS_FILE" 2>/dev/null | head -1)
if [ -n "$MODE" ]; then
    echo "Mode: $MODE"
fi
