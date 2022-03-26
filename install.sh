#!/bin/sh
sudo pacman -S i3-gaps kitty rofi dunst feh zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting
yay -S polybar picom-ibhagwan-git 

cp -r -v config/* ~/.config
cp -r -v home/.*rc ~/.
touch ~/.zsh_history
cp -r -v wallpapers ~/Pictures/

chsh -s /usr/bin/zsh


