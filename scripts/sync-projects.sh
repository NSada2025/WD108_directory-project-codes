#!/bin/bash
# Sync project codes across repositories in ephemeral environment

set -e

echo "🔄 Project Code Sync Tool"
echo "========================"
echo ""

# Check if GitHub CLI is available
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI not found. Please install gh first."
    exit 1
fi

# Function to clone repository temporarily
clone_temp_repo() {
    local repo_name=$1
    local temp_dir="/tmp/ephemeral_sync_$$"
    
    echo "📥 Cloning $repo_name temporarily..."
    mkdir -p "$temp_dir"
    cd "$temp_dir"
    
    if gh repo clone "NSada2025/$repo_name" 2>/dev/null; then
        echo "✅ Successfully cloned $repo_name"
        cd "$repo_name"
        
        # Check if it has project code in name
        if [[ $repo_name =~ ^[A-Z]{2}[0-9]{3} ]]; then
            echo "  → Project code detected: ${BASH_REMATCH[0]}"
        else
            echo "  ⚠️  No project code in repository name"
        fi
        
        cd ..
        rm -rf "$repo_name"
    else
        echo "❌ Failed to clone $repo_name"
    fi
    
    cd - > /dev/null
    rm -rf "$temp_dir"
}

# List all repositories
echo "📊 Fetching repository list..."
repos=$(gh repo list NSada2025 --limit 100 --json name -q '.[].name')

# Process each repository
for repo in $repos; do
    clone_temp_repo "$repo"
    sleep 0.5  # Rate limiting
done

echo ""
echo "✅ Sync check complete!"
echo ""
echo "💡 Remember: This is an ephemeral environment"
echo "   Any changes should be committed and pushed!"