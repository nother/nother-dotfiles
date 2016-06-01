alias h  history
alias hg 'history | grep \!*'
alias j  jobs

alias ..   'cd ..'
alias ...  'cd ../..'
alias .... 'cd ../../..'

alias ls  'ls -p --color=tty'
alias ll  'ls -al'
alias ltr 'ls -ltr'

alias is   'ps -efw | grep -i '
alias ispm 'rpm -qa | grep -i '

alias sssh 'ssh -Y -t \!* screen -RD $USER'

alias v     vim
alias p     python
alias spel 'echo \!* | aspell -a | grep "^&"'
alias ff   'firefox -P \!:1 -no-remote >& /dev/null &'
alias rand 'od --width=24 -X -A n /dev/urandom | head -1'

alias rgx 'find \!:1 -name "*.\!:2" | xargs egrep -n \!:3 \!:4*'

alias json 'curl -s \!:1 | json_reformat'

# perforce
alias p4s 'p4 sync \!*'
alias p4r 'p4 resolve \!*'
alias p4o 'p4 opened \!*'
alias p4d 'p4 diff \!*'
alias p4b 'p4 submit \!*'
alias p4sr 'p4 sync \!*; p4 resolve -am \!*; p4 resolve \!*'
alias p4blame 'p4 annotate -i \!:1 | grep "\!:2" | cut -d: -f1 | xargs p4 describe -s'
