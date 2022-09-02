#!/bin/sh
sudo pacman -S --needed zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting ttf-hack ttf-dejavu noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-fira-code base-devel flatpak fwupd i3-gaps kitty rofi dunst feh brightnessctl xdg-user-dirs xclip emacs neovim rust-racer

xdg-user-dirs-update

git clone https://aur.archlinux.org/yay.git ~/Repositories/yay
cd ~/Repositories/yay
makepkg -si

yay -S spotify polybar picom-ibhagwan-git rofi-bluetooth-git betterlockscreen

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

rustup component add rls

cp -r -v config/* ~/.config
cp -r -v home/.*rc ~/.
touch ~/.zsh_history 
cp -r -v wallpapers ~/Pictures/wallpapers
mkdir ~/.local/share/fonts
cp fonts/feather.ttf ~/.local/share/fonts

chsh -s /usr/bin/zsh



