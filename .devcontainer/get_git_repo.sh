#!/bin/bash

# Check if the repository name is provided
if [ -z "$1" ]; then
  echo "❌ Error:: Please provide the GitHub repository name."
  echo "Usage: ./get_git_repo.sh <repository>"
  exit 1
fi

REPO=$1

# Check if the target directory actually exists before clonning it.
if [ ! -d "../repos/$REPO" ]; then
    git clone https://github.com/manuel-friedmacher/$REPO.git ../repos/$REPO
    if [ $? -eq 0 ]; then
        echo "✅ Success: Repository $REPO successfully cloned!"
    else
        echo "❌ Error: Failed to clone $REPO. Check the repository name or your network connection."
    fi
else
    cd ../repos/$REPO
    git pull
    if [ $? -eq 0 ]; then
        echo "✅ Success: Repository $REPO successfully updated!"
    else
        echo "❌ Error: Failed to update $REPO. Check the repository name or your network connection."
    fi
fi

