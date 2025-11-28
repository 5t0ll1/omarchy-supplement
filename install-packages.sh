#!/bin/bash

packages=(
  7zip
  cmus
  libmad
  enpass-bin
  gemini-cli
  brother-dcp7070dw-cups
  rsync
  starship
  stow
  vorta
  yazi
)

for package in ${packages[@]}; do
  yay -S --noconfirm ${package}
done

