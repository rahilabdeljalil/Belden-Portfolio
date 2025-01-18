#!/bin/bash

# Set your default commit message
DEFAULT_COMMIT_MESSAGE="Update files"

# Ask for a custom commit message or use the default
echo "Enter commit message (or press Enter to use default):"
read COMMIT_MESSAGE

# Use the default message if no custom message is provided
if [ -z "$COMMIT_MESSAGE" ]; then
  COMMIT_MESSAGE=$DEFAULT_COMMIT_MESSAGE
fi

# Add all changes to staging
git add .

# Commit changes
git commit -m "$COMMIT_MESSAGE"

# Push changes to the remote repository
git push

echo "Changes have been pushed to GitHub!"
