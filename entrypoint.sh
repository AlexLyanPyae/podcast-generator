#!/bin/bash

echo "========================"

# Setting Git user name
git config --global user.name "${GITHUB_ACTOR}"

# Correcting the setting of Git user email with added space
git config --global user.email "${INPUT_EMAIL}"

# Marking the workspace as a safe directory for Git operations
git config --global --add safe.directory /github/workspace

# Running your Python script. Make sure the path and script name are correct.
python3 /usr/bin/feed.py

# Adding all changes to Git staging area, committing, and pushing to the repository
git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "========================"