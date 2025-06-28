# gh-repo-fuzzy

A GitHub CLI extension for fuzzy searching and easy copying/cloning of repositories.

## Description

This extension enhances the GitHub CLI (`gh`) with fuzzy search capabilities to quickly find, copy, and clone repositories. It provides an interactive interface to search through your repositories and easily get repository URLs or clone them locally.

## Installation

1. Install the extension:
   ```bash
   gh extension install <your-username>/gh-repo-fuzzy
   ```

2. Verify installation:
   ```bash
   gh repo-fuzzy --version
   ```

## Usage

### Basic Usage

```bash
# Launch fuzzy search for repositories
gh repo-fuzzy

# Search with a specific query
gh repo-fuzzy search "my-project"

# Copy repository URL to clipboard
gh repo-fuzzy copy

# Clone repository directly
gh repo-fuzzy clone
```

### Options

- `--help`: Show help information
- `--version`: Show version information

## Requirements

- GitHub CLI (`gh`) version 2.0 or higher
- `fzf` (fuzzy finder) for interactive search
- `git` for cloning operations

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
