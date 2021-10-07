#!/bin/sh
sudo pacman -S ttf-fira-code flameshot feh i3-gaps kitty rofi ttf-hack pulseaudio pulseaudio-alsa pulseaudio-bluetooth dunst xorg-xbacklight

yay -S picom-ibhagwan-git betterlockscreen nerd-fonts-hack

mkdir ~/.fonts
cp feather.ttf ~/.fonts
fc-cache -f -v

cp -r config/* ~/.config
cp -r home/.*rc ~/.
