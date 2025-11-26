#!/bin/bash

# Install all packages in order
./install-ghostty.sh
./install-starship.sh
./install-stow.sh
./install-dotfiles.sh
./configs.sh
./install-yazi.sh
./install-rsync.sh
./install-vorta.sh
./install-enpass.sh
./install-cmus.sh
./install-gemini.sh

./remove-packages.sh
