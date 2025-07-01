# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.0] - 2025-07-01

### Added
- Initial release of gh-select extension
- Interactive repository selection with fzf
- Beautiful colored terminal interface with Unicode icons
- Repository fuzzy search and filtering
- Arrow key and vim-style (j/k) navigation
- Live preview of repository information
- Multiple action options:
  - Clone repository with custom path selection
  - Copy repository name to clipboard
  - Copy repository URL to clipboard  
  - Open repository in browser
- Cross-platform clipboard support (macOS, Linux X11/Wayland)
- Loading animations and status indicators
- Comprehensive help system
- Error handling and dependency checking
- Support for both public and private repositories
- Repository metadata display (description, privacy, last update)
- Automatic directory creation for cloning
- Tilde expansion support for paths
- Memory efficient temporary file management

### Technical Details
- Native Bash implementation for maximum compatibility
- GitHub CLI integration using official API
- Extension spec compliant structure
- Up to 1000 repository limit support
- JSON processing with jq
- Responsive fuzzy finding with fzf
- Cross-platform compatibility for Unix-like systems
