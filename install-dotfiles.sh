#!/bin/bash

ORIGINAL_DIR=$(pwd)
REPO_URL="git@github.com:5t0ll1/dotfiles.git"
REPO_NAME="dotfiles"

is_stow_installed() {
  pacman -Qi "stow" &> /dev/null
}

if ! is_stow_installed; then
  echo "Install stow first"
  exit 1
fi

cd ~

# Check if the repository already exists
if [ -d "$REPO_NAME" ]; then
  echo "Repository '$REPO_NAME' already exists. Skipping clone"
else
  git clone "$REPO_URL"
fi

# Check if the clone was successful
if [ $? -eq 0 ]; then
  echo "removing old configs"
  rm -rf ~/.bashrc ~/.config/hypr/autostart.conf ~/.config/hypr/bindings.conf ~/.config/hypr/monitors.conf ~/.config/starship.toml ~/.config/ghostty/config

  cd "$REPO_NAME"
  stow bashrc
  stow hypr
  stow ghostty
  #stow tmux
  stow starship

  #reload hyprland
  hyprctl reload
else
  echo "Failed to clone the repository."
  exit 1
fi

