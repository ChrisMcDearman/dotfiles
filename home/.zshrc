#
# ~/.zshrc
#

#Prompt
autoload -Uz compinit promptinit
compinit
promptinit

prompt_tophy_setup() {
	PS1="[%F{magenta}%n%F{white}@%F{cyan}%m %F{green}%1~%F{white}]$ "
}
prompt_themes+=( tophy )

prompt tophy

#Aliases
alias ls='ls --color=auto'
alias la='ls -a'
alias ytdl='youtube-dl'
alias docker='sudo docker'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#8a8a8a,bold"
