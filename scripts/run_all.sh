#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

CURRENT_SCRIPT="$(basename "$0")"

# Iterate over each file in the directory
for script in "$SCRIPT_DIR"/*.sh; do
    # Skip the current script itself
    if [ "$(basename "$script")" == "$CURRENT_SCRIPT" ]; then
        continue
    fi

    # Check if the file is a script
    if [ -f "$script" ] && [ $script != $0 ]; then
        echo "Running $script..."
        "$script"
    else
        echo "Skipping $script (not executable or not a file)"
    fi
done

