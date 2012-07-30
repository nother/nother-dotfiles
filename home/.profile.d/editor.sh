export EDITOR='vim'
if [[ $OSTYPE = darwin* ]]; then
    export VISUAL='mvim -f'
else
    export VISUAL='vim'
fi
