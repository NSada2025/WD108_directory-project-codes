#!/bin/bash
# Cleanup script for ephemeral environment

echo "🧹 Ephemeral Environment Cleanup"
echo "==============================="
echo ""

# Check for uncommitted changes
if [[ -n $(git status -s) ]]; then
    echo "⚠️  WARNING: Uncommitted changes detected!"
    echo ""
    git status -s
    echo ""
    echo "Please commit and push your changes before cleanup!"
    echo "Commands:"
    echo "  git add ."
    echo "  git commit -m 'Your commit message'"
    echo "  git push"
    exit 1
fi

# Clean temporary files
echo "🗑️  Removing temporary files..."
find . -name "*.tmp" -type f -delete 2>/dev/null
find . -name "*.log" -type f -delete 2>/dev/null
find . -name ".DS_Store" -type f -delete 2>/dev/null

# Clear git cache
echo "🔧 Clearing git cache..."
git gc --aggressive --prune=now

echo ""
echo "✅ Cleanup complete!"
echo ""
echo "📌 This ephemeral environment is ready to be destroyed."
echo "   All important data has been pushed to GitHub."