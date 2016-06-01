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

alias rand='od --width=24 -X -A n /dev/urandom | head -1'

function is() {
    ps aux | grep --color=always -i $1 | grep -v 'grep --color=always -i ';
}

function sssh() { ssh -Y -t $@ screen -RD $USER; }

function json() { curl -s $@ | json_reformat; }

function rgx() { find $1 -name "*.$2" | xargs egrep -n $3; }

function p4sr() { p4 sync $1; p4 resolve -am $1; p4 resolve $1; }
function p4blame() { p4 annotate -i $1 | grep "$2" | cut -d: -f1 | xargs p4 describe -s; }

shopt -s direxpand 2> /dev/null

export PATH="$HOME/bin:$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export MANPATH="$HOME/share/man:$MANPATH"

export LESS=eFRX
