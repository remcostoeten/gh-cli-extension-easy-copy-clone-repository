#!/usr/bin/env bash

# Cleanup script for gh-select extension
# Removes temporary, test, and duplicate files

set -e

echo "🧹 Cleaning up gh-select codebase..."

# Remove test and debug files
echo "  Removing test files..."
rm -f gh-select-test* gh-select-debug* gh-select-old* gh-select-backup* 2>/dev/null || true
rm -f *-test.sh *-debug.sh *-old.sh test-* debug-* 2>/dev/null || true

# Remove demo generation files (keep only final demo)
echo "  Removing demo generation files..."
rm -f *.cast create-*demo*.sh record-*.sh 2>/dev/null || true

# Remove backup and duplicate files
echo "  Removing backup files..."
rm -f *.bak *.backup *-copy *-duplicate 2>/dev/null || true

# Remove temporary files
echo "  Removing temporary files..."
rm -f *.tmp *.temp 2>/dev/null || true

echo "✅ Cleanup complete!"
echo
echo "📁 Essential files kept:"
echo "   - gh-select (main script)"
echo "   - extension.yml (GitHub CLI extension config)"
echo "   - README.md (documentation)"
echo "   - CHANGELOG.md (release notes)"
echo "   - LICENSE (license file)"
echo "   - install.sh (installation script)"
echo "   - gh-select-demo-web.gif (demo)"
echo "   - RELEASE_GUIDE.md (release instructions)"
echo
echo "🎯 Repository is now clean and release-ready!"
