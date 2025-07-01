# 📦 Installation Guide

## 🚀 Install the Extension

```bash
# Install directly from GitHub
gh extension install remcostoeten/gh-cli-extension-easy-copy-clone-repository

# Or clone and install locally
git clone https://github.com/remcostoeten/gh-cli-extension-easy-copy-clone-repository
cd gh-cli-extension-easy-copy-clone-repository
gh extension install .
```

## ✅ Verify Installation

```bash
# Check if extension is installed
gh extension list

# Test the extension
gh repo-select-extension --help
```

## 🎯 Usage

```bash
# Launch interactive repository selector
gh repo-select-extension

# Or use the shorter alias if configured
gh select
```

## 🔧 Troubleshooting

If installation fails:
1. Make sure GitHub CLI is installed: `gh --version`
2. Make sure you're authenticated: `gh auth status`
3. Try installing locally: `gh extension install .`

## 📋 Requirements
- GitHub CLI (`gh`)
- fzf (fuzzy finder)
- jq (JSON processor)

Install requirements:
```bash
# macOS
brew install gh fzf jq

# Ubuntu/Debian
sudo apt install gh fzf jq

# Other systems: see respective package managers
```
