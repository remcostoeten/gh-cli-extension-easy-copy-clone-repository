# Fish shell wrapper for gh-repo-fuzzy
# Source this file to enable gh-repo-fuzzy functions in Fish shell
# Usage: source fish/config.fish

# Function to run gh-repo-fuzzy
function gh-repo-fuzzy --description "GitHub CLI extension for fuzzy repository search with copy/clone"
    # Get the directory where this script is located
    set script_dir (dirname (status --current-filename))
    set main_executable "$script_dir/../bin/gh-repo-fuzzy"
    
    # Forward all arguments to the main executable
    if test -x "$main_executable"
        $main_executable $argv
    else
        echo "Error: gh-repo-fuzzy executable not found at $main_executable"
        return 1
    end
end

# Optional: Create an alias for convenience
alias grf gh-repo-fuzzy
