#!/bin/bash

# Compile
make

# Run SLURM batch
sbatch cfd.slurm

# Sleep 1 second until batch is complete.
sleep 1

# Add all changes to git
git add .

# Commit the changes
git commit -am "Run Batch"

# Get the current branch name
current_branch=$(git rev-parse --abbrev-ref HEAD)

# Push to the current branch
git push origin $current_branch

