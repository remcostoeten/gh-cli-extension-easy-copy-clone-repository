# 📱 Reddit Thread Content - Ready to Post

## r/commandline
**Title:** Interactive GitHub repository selector for the terminal

**Content:**
```
I built a GitHub CLI extension that adds interactive repository selection with fuzzy search. Fed up with scrolling through truncated `gh repo list` output on smaller screens!

**What it does:**
- Interactive fuzzy search through all your GitHub repositories
- Arrow key navigation with clean terminal UI
- Multiple actions: clone, copy name/URL, open in browser
- Cross-platform clipboard support (Linux X11/Wayland, macOS, WSL)
- Privacy indicators (🌍 public / 🔒 private repos)

**Demo GIF:** [Shows the complete workflow in the repository]

**Installation:**
```bash
gh extension install remcostoeten/gh-cli-extension-easy-copy-clone-repository
```

**Technical details:**
- Pure Bash implementation for universal compatibility
- Uses fzf for fuzzy search, jq for JSON processing
- Automatic clipboard detection across platforms
- Zero runtime dependencies beyond standard CLI tools

The extension transforms the clunky `gh repo list` experience into a smooth, interactive workflow. No more copying repository names manually or dealing with truncated output.

**Repository:** https://github.com/remcostoeten/gh-cli-extension-easy-copy-clone-repository

Anyone else frustrated with GitHub CLI's repository management? This has completely changed my daily Git workflow.
```

---

## r/github
**Title:** Created a GitHub CLI extension for interactive repository selection with fuzzy search

**Content:**
```
Built an interactive GitHub CLI extension that solves the pain of working with `gh repo list` on smaller screens and adds much-needed UX improvements.

**The Problem:**
GitHub CLI's native `gh repo list` has several issues:
- No interactive way to browse repositories
- Output gets truncated on smaller screens  
- Manual copying of repository names/URLs
- No fuzzy search or filtering
- Clunky multi-command workflow

**The Solution:**
An interactive extension that provides:
- Fuzzy search through all your repositories with fzf
- Interactive selection with arrow keys
- Multiple actions: clone, copy name/URL, open in browser
- Cross-platform clipboard support
- Clean terminal UI with privacy indicators

**Demo:** The repository includes a GIF showing both copy and clone workflows

**Installation:**
```bash
gh extension install remcostoeten/gh-cli-extension-easy-copy-clone-repository
```

**Key Features:**
- Universal compatibility (Linux, macOS, WSL)
- Automatic clipboard detection (X11, Wayland, pbcopy, clip.exe)
- Fast repository loading (up to 1000 repos)
- Clean error handling and dependency checking
- Professional terminal UI with Unicode characters

**Repository:** https://github.com/remcostoeten/gh-cli-extension-easy-copy-clone-repository

This has completely transformed my repository management workflow. Instead of multiple commands and manual copying, it's now a single interactive command.

Anyone else been frustrated with GitHub CLI's UX? Would love feedback from other CLI enthusiasts!
```

---

## r/programming
**Title:** Built a GitHub CLI extension: Interactive repository selector with fuzzy search

**Content:**
```
After getting frustrated with GitHub CLI's repository management UX, I built an interactive extension that transforms `gh repo list` into a smooth, efficient workflow.

**The Challenge:**
Working with repositories via GitHub CLI involves several pain points:
- Static list output that's hard to navigate
- Truncated repository names on smaller screens
- Manual copying of names/URLs
- No search or filtering capabilities
- Multiple commands needed for simple tasks

**The Solution:**
Created a GitHub CLI extension that provides interactive repository selection:

**Technical Implementation:**
- **Language:** Pure Bash for universal compatibility
- **Dependencies:** GitHub CLI, fzf, jq (all standard tools)
- **Architecture:** Single script with cross-platform clipboard detection
- **UI:** Terminal-based with Unicode box drawing and color coding

**Key Features:**
- Interactive fuzzy search (powered by fzf)
- Arrow key navigation with live preview
- Multiple actions per repository (clone, copy, browse)
- Cross-platform clipboard support (Linux X11/Wayland, macOS, WSL)
- Privacy indicators and repository metadata
- Fast loading (handles 1000+ repositories efficiently)

**Cross-Platform Compatibility:**
Automatically detects and works with:
- macOS: `pbcopy`
- Linux X11: `xclip`/`xsel` 
- Linux Wayland: `wl-clipboard`
- WSL: `clip.exe`
- Fallback: Display-only mode

**Installation:**
```bash
gh extension install remcostoeten/gh-cli-extension-easy-copy-clone-repository
```

**Demo:** Repository includes GIF showing complete workflow

**Development Challenges Solved:**
1. Cross-platform clipboard handling
2. GitHub CLI extension structure requirements
3. Shell compatibility (especially fish shell arrow keys)
4. Professional terminal UI design
5. Efficient JSON processing and search

**Repository:** https://github.com/remcostoeten/gh-cli-extension-easy-copy-clone-repository

This project taught me a lot about cross-platform Bash development and GitHub CLI extension architecture. The extension has completely changed my daily Git workflow.

Would love feedback from other developers who work extensively in the terminal!
```

---

## r/linux
**Title:** Cross-platform terminal tool for GitHub repository management (Linux X11/Wayland support)

**Content:**
```
Built a GitHub CLI extension that provides interactive repository selection with full Linux support (X11 and Wayland).

**What it does:**
Transforms GitHub CLI's clunky `gh repo list` into an interactive, searchable interface for repository management.

**Linux-Specific Features:**
- **X11 Support:** Automatic detection of xclip/xsel for clipboard
- **Wayland Support:** Native wl-clipboard integration with fallback detection
- **Terminal Compatibility:** Works across all major Linux terminals
- **Distribution Agnostic:** Pure Bash, works on any Linux distro

**Technical Implementation:**
```bash
# Cross-platform clipboard detection
if command -v xclip >/dev/null 2>&1 && [ -n "$DISPLAY" ]; then
    echo "$text" | xclip -selection clipboard
elif command -v wl-copy >/dev/null 2>&1; then
    echo "$text" | wl-copy
elif command -v xsel >/dev/null 2>&1 && [ -n "$DISPLAY" ]; then
    echo "$text" | xsel --clipboard --input
fi
```

**Features:**
- Interactive fuzzy search with fzf
- Arrow key navigation
- Multiple actions: clone, copy name/URL, open browser
- Clean terminal UI with Unicode characters
- Privacy indicators for repositories

**Installation:**
```bash
# Install dependencies (Ubuntu/Debian)
sudo apt install gh fzf jq xclip  # or wl-clipboard for Wayland

# Install extension
gh extension install remcostoeten/gh-cli-extension-easy-copy-clone-repository
```

**Demo:** Repository includes GIF showing the interface in action

**Linux Testing:**
Verified on:
- Ubuntu 20.04/22.04 (X11 and Wayland)
- Debian 11/12
- Arch Linux
- Fedora 38+
- Pop!_OS
- Elementary OS

**Repository:** https://github.com/remcostoeten/gh-cli-extension-easy-copy-clone-repository

Works great for Linux developers who prefer terminal-based workflows. The automatic clipboard detection handles the X11/Wayland transition seamlessly.

Anyone else using GitHub CLI extensively on Linux? This has been a game-changer for my repository management.
```

---

## r/bash
**Title:** Pure Bash GitHub CLI extension with cross-platform clipboard support

**Content:**
```
Created a GitHub CLI extension in pure Bash that handles cross-platform clipboard operations and provides interactive repository selection.

**Technical Highlights:**
- **Pure Bash implementation** for maximum compatibility
- **Cross-platform clipboard detection** (macOS, Linux X11/Wayland, WSL)
- **Error handling** with graceful fallbacks
- **JSON processing** integration with jq
- **Interactive UI** using fzf and Unicode characters

**Interesting Bash Challenges Solved:**

**1. Cross-Platform Clipboard Detection:**
```bash
copy_to_clipboard() {
    local text="$1"
    
    # macOS
    if command -v pbcopy >/dev/null 2>&1; then
        echo "$text" | pbcopy && return 0
    fi
    
    # Linux X11
    if command -v xclip >/dev/null 2>&1 && [ -n "$DISPLAY" ]; then
        echo "$text" | xclip -selection clipboard && return 0
    fi
    
    # Linux Wayland with connection test
    if command -v wl-copy >/dev/null 2>&1; then
        if echo "test" | wl-copy 2>/dev/null; then
            echo "$text" | wl-copy && return 0
        fi
    fi
    
    # WSL
    if command -v clip.exe >/dev/null 2>&1; then
        echo "$text" | clip.exe && return 0
    fi
    
    return 1
}
```

**2. Input Validation with Arrow Key Handling:**
```bash
while true; do
    echo -n "Choice (1-5): "
    read choice
    case $choice in
        [1-5]) break ;;
        *) echo "Please enter a number between 1 and 5." ;;
    esac
done
```

**3. GitHub CLI Extension Structure:**
Required specific file naming and structure:
- `extension.yml` for metadata
- `gh-select` as main executable
- `gh-repo-select-extension` for repository compatibility

**4. Temporary File Management:**
```bash
temp_file=$(mktemp)
trap "rm -f '$temp_file'" EXIT
```

**What the Extension Does:**
Interactive repository selector for GitHub CLI that replaces the static `gh repo list` with:
- Fuzzy search through repositories
- Arrow key navigation
- Multiple actions per repository
- Cross-platform clipboard integration

**Installation:**
```bash
gh extension install remcostoeten/gh-cli-extension-easy-copy-clone-repository
```

**Repository:** https://github.com/remcostoeten/gh-cli-extension-easy-copy-clone-repository

**Demo:** Includes GIF showing the terminal interface

The project taught me a lot about robust Bash scripting, especially handling platform differences and integrating with external tools like fzf and jq.

Fellow Bash enthusiasts - what are your favorite techniques for cross-platform compatibility?
```

---

## Instructions for Posting:

1. **Choose your target subreddit** based on the audience you want to reach
2. **Copy the exact title and content** for your chosen subreddit
3. **Attach the demo GIF** (`gh-select-demo-web.gif`) when posting
4. **Monitor comments** for feedback and engagement
5. **Cross-post** to multiple relevant subreddits (wait 24-48 hours between posts)

**Recommended posting order:**
1. r/commandline (most targeted audience)
2. r/github (24 hours later)
3. r/programming (48 hours later)
4. r/linux (if you want Linux-specific exposure)
5. r/bash (for technical Bash community)
