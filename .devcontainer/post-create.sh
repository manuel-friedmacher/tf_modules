#!/bin/sh
set -e
echo ""
echo "‼️ User-level configuration started."

echo ""
echo "Create required directory structure for repositories into ../repos/"
sudo mkdir -p ../repos
sudo chown vscode:vscode ../repos

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
sudo chown vscode:vscode "$SCRIPT_DIR/.devcontainer/get_git_repo.sh"
sudo chmod +x "$SCRIPT_DIR/.devcontainer/get_git_repo.sh"

echo ""
echo "✅ User-level configuration complete."
