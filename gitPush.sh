#!/bin/bash

# Add all changes
git add .

# Commit changes with a fixed message
git commit -m "updated Files"

# Detect the current branch (main or master)
BRANCH=$(git symbolic-ref --short HEAD)

# Push changes
git push origin "$BRANCH"

echo "Changes pushed to $BRANCH with message: 'Updated Files'"