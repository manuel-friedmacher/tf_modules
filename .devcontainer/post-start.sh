#!/bin/sh
set -e
echo ""
echo "‼️ Run User-level startup scripts."

# Find the directory where THIS script lives
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo ""
echo "Retrieving required repositories into ../repos/"
$SCRIPT_DIR/.devcontainer/get_git_repo.sh tf_module_build_sa
$SCRIPT_DIR/.devcontainer/get_git_repo.sh tf_module_enable_cf
$SCRIPT_DIR/.devcontainer/get_git_repo.sh tf_module_workzone

# git clone https://github.com/manuel-friedmacher/tf_module_build_sa.git ../repos/tf_module_build_sa
# git clone https://github.com/manuel-friedmacher/tf_module_enable_cf.git ../repos/tf_module_enable_cf
# git clone https://github.com/manuel-friedmacher/tf_module_workzone.git ../repos/tf_module_workzone

echo ""
echo "✅ Running of User-level startup scripts complete."
