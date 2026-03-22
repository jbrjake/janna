#!/bin/bash
# Janna PostToolUse: validate docs/ file paths follow naming conventions
# Warns (exit 1) if a file is written to docs/ with an unexpected name

INPUT=$(cat)
TOOL=$(echo "$INPUT" | jq -r '.tool_name')

if [ "$TOOL" = "Write" ] || [ "$TOOL" = "Edit" ]; then
    FILE=$(echo "$INPUT" | jq -r '.tool_input.file_path // .tool_input.path // ""')

    # Only check files in docs/
    if [[ "$FILE" == docs/* ]] || [[ "$FILE" == */docs/* ]]; then
        BASENAME=$(basename "$FILE")

        # Check for vague language in filenames
        if echo "$BASENAME" | grep -qiE '(misc|temp|draft|untitled|test[0-9])'; then
            echo "WARNING: '$BASENAME' uses a vague filename. Use descriptive names matching document-forge conventions."
            exit 1
        fi

        # Check that PRD files follow NN-name.md pattern
        if [[ "$FILE" == */prd/* ]] && [[ "$BASENAME" != "00-prd-index.md" ]]; then
            if ! echo "$BASENAME" | grep -qE '^[0-9]{2}-[a-z].*\.md$'; then
                echo "WARNING: PRD file '$BASENAME' should follow pattern NN-area-name.md (e.g., 01-data-ingestion.md)"
                exit 1
            fi
        fi

        # Check that persona files use name format
        if [[ "$FILE" == */user-personas/* ]] || [[ "$FILE" == */dev-team/[0-9]* ]]; then
            if ! echo "$BASENAME" | grep -qE '^[0-9]{2}-[a-z].*\.md$'; then
                echo "WARNING: Persona file '$BASENAME' should follow pattern NN-persona-name.md"
                exit 1
            fi
        fi
    fi
fi
exit 0
