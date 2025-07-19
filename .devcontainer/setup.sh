#!/bin/bash
# Codespaces ephemeral environment setup script

echo "🚀 Initializing WD108 Ephemeral Environment..."

# Configure git
git config --global user.name "${GITHUB_USER}"
git config --global user.email "${GITHUB_USER}@users.noreply.github.com"

# Create scripts directory if not exists
mkdir -p /workspaces/WD108_directory-project-codes/scripts

# Display welcome message
cat << 'EOF'
╔═══════════════════════════════════════════════════════════╗
║           WD108 - Project Code Management System          ║
║                  Ephemeral Environment                    ║
╠═══════════════════════════════════════════════════════════╣
║  ⚡ This is a temporary environment                       ║
║  📝 All changes must be committed before closing         ║
║  🔄 Environment will be destroyed after use              ║
╚═══════════════════════════════════════════════════════════╝

Available commands:
  ./scripts/sync-projects.sh    - Sync project codes
  ./scripts/list-projects.sh    - List all projects
  ./scripts/cleanup.sh          - Clean temporary files

EOF

echo "✅ Setup complete! Happy coding in your ephemeral workspace!"