#!/bin/bash

# Installation script for gh-select extension
# Supports both user and global installation

set -e

# Parse command line arguments
GLOBAL_INSTALL=false
FORCE_INSTALL=false

while [[ $# -gt 0 ]]; do
    case $1 in
        --global)
            GLOBAL_INSTALL=true
            shift
            ;;
        --force)
            FORCE_INSTALL=true
            shift
            ;;
        --help|-h)
            echo "gh-select Installation Script"
            echo ""
            echo "Usage: $0 [OPTIONS]"
            echo ""
            echo "Options:"
            echo "  --global    Install globally for all users (requires sudo)"
            echo "  --force     Force installation even if already installed"
            echo "  --help, -h  Show this help message"
            echo ""
            echo "Examples:"
            echo "  $0                # Install for current user only"
            echo "  $0 --global       # Install globally for all users"
            echo "  sudo $0 --global  # Install globally (with sudo)"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            echo "Use --help for usage information"
            exit 1
            ;;
    esac
done

echo "🔍 Installing gh-select extension..."

# Check if GitHub CLI is installed
if ! command -v gh > /dev/null 2>&1; then
    echo "❌ GitHub CLI (gh) is not installed"
    echo "Please install it from: https://cli.github.com/"
    exit 1
fi

# Determine installation directory
if [ "$GLOBAL_INSTALL" = true ]; then
    # Global installation
    if [ "$EUID" -ne 0 ]; then
        echo "❌ Global installation requires root privileges"
        echo "Please run: sudo $0 --global"
        exit 1
    fi
    
    # Try different global paths
    if [ -d "/usr/local/bin" ]; then
        INSTALL_DIR="/usr/local/bin"
        SCRIPT_NAME="gh-select"
    elif [ -d "/usr/bin" ]; then
        INSTALL_DIR="/usr/bin"
        SCRIPT_NAME="gh-select"
    else
        echo "❌ Could not find suitable global installation directory"
        exit 1
    fi
    
    echo "📍 Installing globally to: $INSTALL_DIR"
else
    # User installation (GitHub CLI extension)
    # Check if gh is authenticated for user installations
    if ! gh auth status > /dev/null 2>&1; then
        echo "❌ GitHub CLI not authenticated"
        echo "Please run: gh auth login"
        exit 1
    fi
    
    INSTALL_DIR="$HOME/.local/share/gh/extensions/gh-select"
    SCRIPT_NAME="gh-select"
    echo "📍 Installing for current user to: $INSTALL_DIR"
fi

# Check if already installed
if [ "$GLOBAL_INSTALL" = true ]; then
    EXISTING_PATH="$INSTALL_DIR/$SCRIPT_NAME"
else
    EXISTING_PATH="$INSTALL_DIR/$SCRIPT_NAME"
fi

if [ -f "$EXISTING_PATH" ] || [ -d "$INSTALL_DIR" ]; then
    if [ "$FORCE_INSTALL" = false ]; then
        echo "⚠️  gh-select is already installed"
        echo "   Location: $EXISTING_PATH"
        echo "   Use --force to overwrite"
        exit 1
    else
        echo "🧹 Removing existing installation..."
        if [ "$GLOBAL_INSTALL" = true ]; then
            rm -f "$EXISTING_PATH"
        else
            rm -rf "$INSTALL_DIR"
        fi
    fi
fi

# Create installation directory
if [ "$GLOBAL_INSTALL" = false ]; then
    mkdir -p "$INSTALL_DIR"
fi

# Copy the script
if [ ! -f "gh-select" ]; then
    echo "❌ gh-select script not found in current directory"
    echo "Please run this script from the gh-select repository directory"
    exit 1
fi

cp gh-select "$INSTALL_DIR/$SCRIPT_NAME"
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

echo "✅ Successfully installed gh-select extension!"
echo ""
if [ "$GLOBAL_INSTALL" = true ]; then
    echo "🌍 Global installation complete!"
    echo "🚀 All users can now use:"
    echo "   gh-select          # Direct command"
    echo "   gh-select --help   # Show help"
else
    echo "👤 User installation complete!"
    echo "🚀 You can now use:"
    echo "   gh select          # Interactive repository selector"
    echo "   gh select --help   # Show help"
    echo "   gh select --version # Show version"
fi
echo ""
echo "📋 Required dependencies:"
echo "   • fzf (fuzzy finder) - brew install fzf or apt install fzf"
echo "   • jq (JSON processor) - brew install jq or apt install jq"
echo ""
if [ "$GLOBAL_INSTALL" = true ]; then
    echo "💡 Note: Global installation allows direct 'gh-select' command"
    echo "   but won't integrate with 'gh extension' commands"
else
    echo "💡 Note: This integrates with GitHub CLI extensions system"
    echo "   Use 'gh extension list' to see installed extensions"
fi
