case $OSTYPE in
darwin*)   if command -v gls > /dev/null; then
               alias ls='gls --color=auto'
           else
               alias ls='ls -G'
           fi
           ;;
linux*)    alias ls='ls --color=auto'
           ;;
esac

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias v='vim'
alias p='python'
