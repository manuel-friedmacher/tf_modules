#!/bin/sh
set -e
echo ""
echo "‼️ User-level configuration started."

echo ""
echo "Create required directory structure for repositories into ../repos/"
sudo mkdir -p ../repos
sudo chown vscode:vscode ../repos

# echo ""
# echo "Cloning required repositories into ../repos/"
# git clone https://github.com/manuel-friedmacher/tf_module_build_sa.git ../repos/tf_module_build_sa
# git clone https://github.com/manuel-friedmacher/tf_module_enable_cf.git ../repos/tf_module_enable_cf

echo ""
echo "✅ User-level configuration complete."
