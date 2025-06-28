#!/bin/bash

# Installation script for gh-select extension

set -e

echo "🔍 Installing gh-select extension..."

# Check if GitHub CLI is installed
if ! command -v gh >/dev/null 2>&1; then
    echo "❌ GitHub CLI (gh) is not installed"
    echo "Please install it from: https://cli.github.com/"
    exit 1
fi

# Check if gh is authenticated
if ! gh auth status >/dev/null 2>&1; then
    echo "❌ GitHub CLI not authenticated"
    echo "Please run: gh auth login"
    exit 1
fi

# Create the extension directory
EXTENSION_DIR="$HOME/.local/share/gh/extensions/gh-select"

# Remove existing installation if present
if [ -d "$EXTENSION_DIR" ]; then
    echo "🧹 Removing existing installation..."
    rm -rf "$EXTENSION_DIR"
fi

# Create extension directory
mkdir -p "$EXTENSION_DIR"

# Copy the main script
cp gh-select "$EXTENSION_DIR/gh-select"
chmod +x "$EXTENSION_DIR/gh-select"

echo "✅ Successfully installed gh-select extension!"
echo ""
echo "🚀 You can now use:"
echo "   gh select          # Interactive repository selector"
echo "   gh select --help   # Show help"
echo "   gh select --version # Show version"
echo ""
echo "📋 Required dependencies:"
echo "   • fzf (fuzzy finder) - brew install fzf or apt install fzf"
echo "   • jq (JSON processor) - brew install jq or apt install jq"
