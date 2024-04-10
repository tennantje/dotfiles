#!/bin/bash

# Navigate to the dotfiles directory
cd "$(dirname "$0")"

# List of directories to stow
DIRS="gitconfig alacritty tmux"

# Apply GNU Stow to each directory
for dir in $DIRS; do
    echo "Stowing $dir..."
    stow -v $dir
done

echo "Dotfiles are stowed."

