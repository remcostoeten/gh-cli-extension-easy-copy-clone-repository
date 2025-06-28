# 🔍 gh-select - Interactive Repository Selector

[![GitHub](https://img.shields.io/badge/GitHub-Extension-blue)](https://github.com/remcostoeten/gh-repo-select-extension)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Unix%2FLinux%2FmacOS-lightgrey)](#compatibility)

A **native GitHub CLI extension** that adds interactive repository selection functionality to the `gh` command. No more struggling with truncated repository lists or copying names manually!

## 🎯 Why?

The GitHub CLI (`gh`) has some UX limitations when working with repositories:

- ❌ No interactive way to browse through your repositories
- ❌ `gh repo list` output gets truncated on smaller screens
- ❌ Forces you to manually copy repository names or navigate to GitHub web
- ❌ No fuzzy search or filtering capabilities
- ❌ Clunky workflow for discovering and cloning repositories

## ✨ What This Extension Does

🎉 **Interactive Repository Selection**: Browse all your repositories with a beautiful, interactive interface

🔍 **Fuzzy Search**: Type to filter repositories instantly

⌨️ **Keyboard Navigation**: Use arrow keys (↑/↓) or vim-style (j/k) navigation

📊 **Rich Information**: See repository descriptions, privacy status, and last update dates

🎬 **Live Preview**: View repository details as you navigate

🚀 **Multiple Actions**: Clone, copy name/URL, or open in browser

📁 **Custom Clone Paths**: Choose where to clone repositories

🌈 **Beautiful UI**: Colorful, intuitive interface with Unicode icons

## 🛠 Installation

### Prerequisites

Make sure you have these tools installed:

- **GitHub CLI** (`gh`) - [Install here](https://cli.github.com/)
- **fzf** (fuzzy finder) - `brew install fzf` (macOS) or `apt install fzf` (Ubuntu)
- **jq** (JSON processor) - `brew install jq` (macOS) or `apt install jq` (Ubuntu)

### Install the Extension

```bash
# Install from GitHub
gh extension install remcostoeten/gh-repo-select-extension

# Or install locally for development
gh extension install .
```

### Verify Installation

```bash
gh select --version
```

## 🚀 Usage

### Basic Usage

```bash
# Launch interactive repository selector
gh select

# Alternative syntax (same functionality)
gh select repo
```

### Available Actions

Once you select a repository, you can:

1. **🔽 Clone Repository** - Clone to current directory or custom path
2. **📋 Copy Repository Name** - Copy `owner/repo-name` to clipboard
3. **🔗 Copy Repository URL** - Copy `https://github.com/owner/repo-name` to clipboard
4. **🌐 View in Browser** - Open repository on GitHub.com
5. **❌ Cancel** - Exit without action

### Help & Version

```bash
# Show help
gh select --help

# Show version
gh select --version
```

## 🎬 Demo

Run the included demo script to see the extension in action and check your setup:

```bash
./demo.sh
```

**Demo Output:**

```
🎬 gh-select Extension Demo
==========================

📋 This demo will show you the capabilities of the gh-select extension

🔧 First, let's check if all dependencies are installed:

   GitHub CLI (gh): ✅ Installed
   fzf (fuzzy finder): ✅ Installed
   jq (JSON processor): ✅ Installed
   GitHub authentication: ✅ Authenticated

🚀 Available commands:
   gh select          # Interactive repository selector
   gh select --help   # Show help information
   gh select --version # Show version

✨ Features:
   🔍 Fuzzy search through all your repositories
   ⌨️  Arrow key navigation (↑/↓) or vim-style (j/k)
   📊 Repository information (description, privacy, last update)
   🎬 Live preview of repository details
   📁 Clone to custom paths
   📋 Copy repository names or URLs to clipboard
   🌐 Open repositories in browser
   🎨 Beautiful colored interface with Unicode icons

🎯 To start the interactive selector, run:
   gh select

💡 Tips:
   • Type to filter repositories
   • Use arrow keys or j/k to navigate
   • Press Enter to select a repository
   • Press Esc to cancel

🎉 Enjoy using gh-select!
```

## 🎮 Interface Guide

### Navigation

- **↑/↓** or **j/k** - Navigate through repositories
- **Type** - Filter repositories with fuzzy search
- **Enter** - Select repository
- **Esc** or **Ctrl+C** - Cancel and exit

### Repository Information

Each repository shows:
- 📁 **Repository icon**
- 🌍/🔒 **Privacy indicator** (public/private)
- **Owner/Name**
- **Description**
- **Last updated date**

### Live Preview

The bottom panel shows additional repository information as you navigate.

## 💻 Compatibility

✅ **macOS** - Full support with `pbcopy` for clipboard

✅ **Linux (X11)** - Full support with `xclip` or `xsel`

✅ **Linux (Wayland)** - Full support with `wl-clipboard`

✅ **WSL** - Works with appropriate clipboard utilities

✅ **Any Unix-like system** - Core functionality works everywhere

## 🎨 Features

### 🎯 Smart Repository Detection
- Fetches up to 1000 repositories
- Shows both public and private repositories
- Displays repository metadata (description, privacy, last update)

### 🔍 Advanced Search
- Real-time fuzzy search filtering
- Search by repository name, owner, or description
- Instant results as you type

### 📁 Intelligent Cloning
- Clone to current directory or specify custom path
- Automatic directory creation
- Tilde (`~`) expansion support
- Helpful navigation suggestions after cloning

### 📋 Universal Clipboard Support
- Automatic detection of available clipboard utilities
- Fallback display if clipboard unavailable
- Cross-platform compatibility

### 🎨 Beautiful Interface
- Colorful, modern terminal UI
- Unicode icons and borders
- Loading animations
- Clear status messages

## 🔧 Technical Details

### Architecture
- **Native Bash script** - No external runtime dependencies
- **GitHub CLI integration** - Uses official `gh` API calls
- **Extension spec compliant** - Follows GitHub CLI extension standards
- **Cross-platform** - Works on all Unix-like systems

### Performance
- **Fast startup** - Minimal overhead
- **Efficient API usage** - Single API call to fetch repositories
- **Responsive UI** - Instant search filtering
- **Memory efficient** - Temporary file cleanup

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### Development Setup

```bash
# Clone the repository
git clone https://github.com/remcostoeten/gh-repo-select-extension.git
cd gh-repo-select-extension

# Install locally for testing
gh extension install .

# Test the extension
gh select --help
```

### Reporting Issues

Please report bugs and feature requests on the [GitHub Issues](https://github.com/remcostoeten/gh-repo-select-extension/issues) page.

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Remco Stoeten**

- GitHub: [@remcostoeten](https://github.com/remcostoeten)
- Website: [remcostoeten.com](https://remcostoeten.com)

---

⭐ **If this extension helped you, please star the repository!** ⭐

It really helps with motivation and lets others discover this tool.
