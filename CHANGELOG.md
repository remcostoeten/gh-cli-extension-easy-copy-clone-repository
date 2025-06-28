# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Comprehensive README documentation with installation instructions
- Key bindings table for better user guidance
- Troubleshooting section for common clipboard issues
- Usage examples and demo placeholder
- Development guidelines for contributors

### Changed
- Updated installation instructions to use correct repository path
- Enhanced documentation structure and clarity

## [0.1.0] - 2024-01-XX

### Added
- Initial release of gh-repo-fuzzy extension
- Interactive fuzzy search for GitHub repositories
- Copy repository name to clipboard functionality
- Clone repository directly from picker
- Support for both Wayland (wl-copy) and X11 (xclip) clipboard utilities
- Key bindings for copy (ENTER) and clone (CTRL-C) operations
- Help and version command line options
- Error handling for missing dependencies (gh, fzf, clipboard utilities)
- Authentication status checks
- Repository fetching with limit of 1000 repositories
- Cross-platform clipboard support with fallback messages

### Technical Details
- Written in Bash for maximum compatibility
- Uses GitHub CLI (gh) for repository access
- Integrates with fzf for fuzzy searching interface
- Supports multiple shell environments (bash, fish, etc.)
- Proper error handling and user feedback

### Requirements
- GitHub CLI (gh) version 2.0+
- fzf (fuzzy finder)
- git (for cloning)
- wl-clipboard (Wayland) or xclip (X11) for clipboard functionality
