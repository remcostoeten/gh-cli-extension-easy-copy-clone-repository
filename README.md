# gh-select

Interactive GitHub repository selector with fuzzy search.

![gh-select Demo](./gh-select-demo.gif)

## Installation

```bash
gh extension install remcostoeten/gh-select
```

### Requirements
- [GitHub CLI](https://cli.github.com/) 
- [fzf](https://github.com/junegunn/fzf) - `brew install fzf` or `apt install fzf`
- [jq](https://stedolan.github.io/jq/) - `brew install jq` or `apt install jq`
## Usage

```bash
gh select
```

### Actions

1. **Clone Repository** - Clone to current directory or custom path
2. **Copy Repository Name** - Copy `owner/repo-name` to clipboard
3. **Copy Repository URL** - Copy repository URL to clipboard
4. **View in Browser** - Open repository on GitHub.com
5. **Cancel** - Exit without action

### Options

```bash
gh select --help     # Show help
gh select --version  # Show version
```

## License

MIT
