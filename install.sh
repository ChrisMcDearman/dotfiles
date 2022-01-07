#!/bin/sh
sudo pacman -S zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting ttf-hack ttf-dejavu noto-fonts-cjk

cp -r -v config/* ~/.config
cp -r -v home/.*rc ~/.

chsh -s /usr/bin/zsh


