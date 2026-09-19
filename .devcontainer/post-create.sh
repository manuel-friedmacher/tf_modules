#!/bin/bash
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

PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
ACTIONLINT_VERSION="1.7.7"

sudo apt-get update
sudo apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  python3 \
  python3-venv

python3 -m venv "$HOME/.local/mkdocs-venv"
"$HOME/.local/mkdocs-venv/bin/pip" install --upgrade pip
"$HOME/.local/mkdocs-venv/bin/pip" install -r "$PROJECT_DIR/tf_modules/requirements.txt"

mkdir -p "$HOME/.local/bin"
ln -sf "$HOME/.local/mkdocs-venv/bin/mkdocs" "$HOME/.local/bin/mkdocs"
ln -sf "$HOME/.local/mkdocs-venv/bin/mike" "$HOME/.local/bin/mike"

case "$(dpkg --print-architecture)" in
  amd64) actionlint_arch="x86_64" ;;
  arm64) actionlint_arch="arm64" ;;
  *) echo "Unsupported architecture" >&2; exit 1 ;;
esac

curl -fsSL \
  "https://github.com/rhysd/actionlint/releases/download/v${ACTIONLINT_VERSION}/actionlint_${ACTIONLINT_VERSION}_linux_${actionlint_arch}.tar.gz" \
  | sudo tar -xz -C /usr/local/bin actionlint

echo ""
echo "✅ User-level configuration complete."
