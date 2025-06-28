#!/bin/bash

# Bash shell wrapper for gh-repo-fuzzy
# Source this file to enable gh-repo-fuzzy functions in Bash shell
# Usage: source bash/gh-repo-fuzzy.sh

# Function to run gh-repo-fuzzy
function gh-repo-fuzzy() {
    # Get the directory where this script is located
    local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    local main_executable="$script_dir/../bin/gh-repo-fuzzy"
    
    # Forward all arguments to the main executable
    if [[ -x "$main_executable" ]]; then
        "$main_executable" "$@"
    else
        echo "Error: gh-repo-fuzzy executable not found at $main_executable" >&2
        return 1
    fi
}

# Optional: Create an alias for convenience
alias grf='gh-repo-fuzzy'

# Export the function to make it available in subshells
export -f gh-repo-fuzzy
