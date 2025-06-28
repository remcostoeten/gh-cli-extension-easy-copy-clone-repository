#!/bin/bash

# Demo script for gh-select extension

set -e

echo "🎬 gh-select Extension Demo"
echo "=========================="
echo

echo "📋 This demo will show you the capabilities of the gh-select extension"
echo

echo "🔧 First, let's check if all dependencies are installed:"
echo

# Check dependencies
echo -n "   GitHub CLI (gh): "
if command -v gh >/dev/null 2>&1; then
    echo "✅ Installed"
else
    echo "❌ Not found"
fi

echo -n "   fzf (fuzzy finder): "
if command -v fzf >/dev/null 2>&1; then
    echo "✅ Installed"
else
    echo "❌ Not found"
fi

echo -n "   jq (JSON processor): "
if command -v jq >/dev/null 2>&1; then
    echo "✅ Installed"
else
    echo "❌ Not found"
fi

echo -n "   GitHub authentication: "
if gh auth status >/dev/null 2>&1; then
    echo "✅ Authenticated"
else
    echo "❌ Not authenticated"
fi

echo

echo "🚀 Available commands:"
echo "   gh select          # Interactive repository selector"
echo "   gh select --help   # Show help information"
echo "   gh select --version # Show version"
echo

echo "✨ Features:"
echo "   🔍 Fuzzy search through all your repositories"
echo "   ⌨️  Arrow key navigation (↑/↓) or vim-style (j/k)"
echo "   📊 Repository information (description, privacy, last update)"
echo "   🎬 Live preview of repository details"
echo "   📁 Clone to custom paths"
echo "   📋 Copy repository names or URLs to clipboard"
echo "   🌐 Open repositories in browser"
echo "   🎨 Beautiful colored interface with Unicode icons"
echo

echo "🎯 To start the interactive selector, run:"
echo "   gh select"
echo

echo "💡 Tips:"
echo "   • Type to filter repositories"
echo "   • Use arrow keys or j/k to navigate"
echo "   • Press Enter to select a repository"
echo "   • Press Esc to cancel"
echo

echo "🎉 Enjoy using gh-select!"
