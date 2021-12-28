#!/bin/sh
sudo pacman -S ttf-fira-code flameshot feh i3-gaps kitty rofi ttf-hack pulseaudio pulseaudio-alsa pulseaudio-bluetooth dunst xorg-xbacklight brightnessctl

yay -S picom-ibhagwan-git betterlockscreen nerd-fonts-hack polybar

mkdir ~/.fonts
cp feather.ttf ~/.fonts
fc-cache -f -v

cp -r -v config/* ~/.config
cp -r -v home/.*rc ~/.

mkdir ~/Pictures/wallpapers
cp -v wallpaper.jpg ~/Pictures/wallpapers

