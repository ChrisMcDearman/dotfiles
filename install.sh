#!/bin/sh
sudo pacman -S --needed zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting ttf-fira-code i3-gaps kitty rofi dunst feh ttf-fira-code brightnessctl

yay -S polybar picom-ibhagwan-git rofi-bluetooth-git spotify

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cp -r -v config/* ~/.config
cp -r -v home/.*rc ~/.
touch ~/.zsh_history 
cp -r -v wallpapers ~/Pictures/wallpapers
mkdir ~/.local/share/fonts
cp fonts/feather.ttf ~/.local/share/fonts

chsh -s /usr/bin/zsh



