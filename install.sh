#!/bin/sh
sudo pacman -S --needed zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting ttf-fira-code base-devel gnome-software-packagekit-plugin flatpak fwupd

git clone https://aur.archlinux.org/yay.git ~/Repositories/yay
cd ~/Repositories/yay
makepkg -si

yay -S spotify gnome-browser-connector

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cp -r -v config/* ~/.config
cp -r -v home/.*rc ~/.
touch ~/.zsh_history 
cp -r -v wallpapers ~/Pictures/wallpapers
mkdir ~/.local/share/fonts
cp fonts/feather.ttf ~/.local/share/fonts

chsh -s /usr/bin/zsh



