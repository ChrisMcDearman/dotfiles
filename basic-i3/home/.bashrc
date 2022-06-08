#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias sv='ssh chris@192.168.1.223'
alias i='sudo pacman -S --needed'
alias q='sudo pacman -Qs'
alias r='sudo pacman -Rns'

PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
