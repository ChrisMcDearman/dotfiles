#!/bin/sh
sudo pacman -S zsh zsh-completions zsh-autosuggestions ttf-hack ttf-dejavu noto-fonts-cjk

cp -r -v config/* ~/.config
cp -r -v home/.*rc ~/.

chsh -l /usr/bin/zsh


