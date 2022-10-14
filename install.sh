#!/bin/sh

# Packages
sudo pacman -S --needed zsh zsh-completions ttf-hack ttf-dejavu noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-fira-code base-devel flatpak fwupd i3-gaps kitty rofi dunst feh brightnessctl xdg-user-dirs xclip xsel emacs neovim ranger

xdg-user-dirs-update

# Yay
git clone https://aur.archlinux.org/yay.git ~/Repositories/yay
cd ~/Repositories/yay
makepkg -si

yay -S spotify polybar picom-ibhagwan-git rofi-bluetooth-git rofi-wifi-menu-git betterlockscreen

# OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rls

# Config
cp -r -v config/* ~/.config
cp -r -v home/.*rc ~/.
touch ~/.zsh_history 
cp -r -v wallpapers ~/Pictures/wallpapers
mkdir ~/.local/share/fonts
cp fonts/feather.ttf ~/.local/share/fonts

chsh -s /usr/bin/zsh



