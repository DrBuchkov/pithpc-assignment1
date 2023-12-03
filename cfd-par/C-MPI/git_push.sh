#!/bin/bash

# Add all changes to git
git add .

# Commit the changes
git commit -am "Run Batch"

# Get the current branch name
current_branch=$(git rev-parse --abbrev-ref HEAD)

# Push to the current branch
git push origin $current_branch

