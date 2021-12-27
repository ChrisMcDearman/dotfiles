#interactive mode idk how this works
[[ $- != *i* ]] && return

#Prompt
PS1='\w/ → '
# PS1='[\u@\h \W]\$ '

#Aliases
alias ls='ls --color=auto'
alias la='ls -a'
alias cls='clear'
alias py='python3'
alias pip='pip3'
alias ytdl='youtube-dl'
alias docker='sudo docker'
alias open='xdg-open'
alias xr='sudo xbps-remove'
alias xi='sudo xbps-install'
alias xq='sudo xbps-query'
alias cp='printf "cp -v'
alias mv='printf "mv -v'
alias rm='printf "rm -v'

PATH="/home/mathlet/scripts/:${PATH}"
export PATH

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
