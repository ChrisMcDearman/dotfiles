#!/bin/sh
sudo pacman -S ttf-fira-code flameshot feh i3-gaps kitty rofi

yay -S picom-ibhagwan-git betterlockscreen

mkdir ~/.fonts
cp feather.ttf ~/.fonts
fc-cache -f -v

cp -r config/* ~/.config
cp -r home/.*rc ~/.
