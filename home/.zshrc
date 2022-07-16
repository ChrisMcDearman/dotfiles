#
# ~/.zshrc
#

#Prompt
autoload -Uz compinit promptinit
compinit
promptinit

prompt_tophy_setup() {
	PS1="[%F{magenta}%n%F{white}@%F{blue}%m %F{green}%1~%F{white}]$ "
}
prompt_themes+=( tophy )

prompt tophy

# Aliases
alias ls='ls --color=auto'
alias la='ls -a'
alias ytdl='youtube-dl'
alias docker='sudo docker'
alias i='sudo pacman -S --needed'
alias ri='sudo pacman -S'
alias u='yay'
alias q='sudo pacman -Q'
alias r='sudo pacman -Rns'
alias rc='sudo pacman -Rcns'
alias vim='nvim'
alias ssh='kitty +kitten ssh'
alias sv='ssh chris@192.168.1.223'

# Exports
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#8a8a8a,bold"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY
