#!/bin/sh
set -e
echo ""
echo "‼️ Run User-level startup scripts."

echo ""
echo "Retrieving required repositories into ../repos/"
$$LOCAL_WORKSPACE_FOLDER/.devcontainer/get_git_repo.sh tf_module_build_sa
$$LOCAL_WORKSPACE_FOLDER/.devcontainer/get_git_repo.sh tf_module_enable_cf
$$LOCAL_WORKSPACE_FOLDER/.devcontainer/get_git_repo.sh tf_module_workzone

# git clone https://github.com/manuel-friedmacher/tf_module_build_sa.git ../repos/tf_module_build_sa
# git clone https://github.com/manuel-friedmacher/tf_module_enable_cf.git ../repos/tf_module_enable_cf
# git clone https://github.com/manuel-friedmacher/tf_module_workzone.git ../repos/tf_module_workzone

echo ""
echo "✅ Running of User-level startup scripts complete."
