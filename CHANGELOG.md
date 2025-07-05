# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.2] - 2025-01-05

### Added
- 🎬 **Professional 30fps demo GIF** showing real usage workflow
- 🛠️ **Enhanced dependency checking** with user-friendly installation guidance
- 📋 **Improved error messages** with platform-specific installation instructions
- 🧹 **Repository cleanup** - removed redundant files and improved structure
- ✅ **Better help system** with comprehensive usage examples

### Fixed
- 📦 **Package.json** structure and metadata
- 🔧 **Install script** dependency validation with graceful handling
- 📖 **Documentation** clarity and completeness

### Changed
- 🎯 **Streamlined codebase** - removed unnecessary demo scripts
- 🚀 **Improved user experience** for missing dependencies
- 📋 **Enhanced installation flow** with better error handling

## [1.0.0] - 2025-01-05

### Added
- 🎉 **Initial release** of gh-select extension
- 🔍 **Interactive repository selection** with fuzzy search powered by fzf
- 📁 **Clone repositories** to current directory or custom paths
- 📋 **Copy functionality** for repository names and URLs with cross-platform clipboard support
- 🌐 **Browser integration** to open repositories on GitHub.com
- 🎨 **Beautiful interface** with Unicode icons and GitHub-style branding
- 📊 **Repository information** display (privacy status, descriptions, live preview)
- ⌨️ **Keyboard navigation** with arrow keys and vim-style (j/k) movement
- 🌍 **Cross-platform support** for macOS, Linux (X11/Wayland), and WSL
- 📋 **Universal clipboard** works with pbcopy, xclip, xsel, wl-copy, and clip.exe
- 🚀 **Dual installation modes**: GitHub CLI extension or global system command
- ✅ **Help and version flags** (`--help`, `--version`)
- 🛠️ **Enhanced dependency checking** with user-friendly installation guidance
- 📖 **Comprehensive documentation** with demo GIF and usage examples
- 🎬 **Professional demo** showing real usage workflow at 30fps

### Technical Details
- Fetches up to 1000 repositories from GitHub API
- Uses GitHub CLI for authentication and API access
- Integrates seamlessly with GitHub CLI extension system
- Supports both user-specific and global installations
- Includes comprehensive dependency checking for required tools (gh, fzf, jq)
- Graceful error handling with platform-specific installation instructions
- Cross-platform clipboard detection and fallbacks

### Dependencies
- **GitHub CLI (gh)** - for authentication and API access (required)
- **fzf** - for fuzzy finding and interactive selection (required)
- **jq** - for JSON processing of GitHub API responses (required)

### Installation
```bash
# User installation (GitHub CLI extension)
curl -sSL https://raw.githubusercontent.com/remcostoeten/gh-repo-select-extension/master/install.sh | bash

# Global installation (available to all users)
curl -sSL https://raw.githubusercontent.com/remcostoeten/gh-repo-select-extension/master/install.sh | sudo bash -s -- --global
```

### Usage
```bash
gh select              # Launch interactive selector
gh select --help       # Show help
gh select --version    # Show version
```

---

## Contributing

Issues and pull requests are welcome at the [GitHub repository](https://github.com/remcostoeten/gh-repo-select-extension).
