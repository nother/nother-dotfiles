reset='\e[0m'
white='\e[0;37m'
green='\e[0;32m'
cyan='\e[0;36m'
yellow='\e[0;33m'
yellow_underline='\e[4;33m'
red='\e[0;31m'

prompt_normal="\[${reset}\]"
prompt_path="\[${reset}${green}\][\w]"
prompt_user="${prompt_normal}\u"
prompt_at="\[${reset}${white}\]@"
prompt_host="\[${reset}${yellow}\]\h"

if [[ "$SSH_TTY" ]]; then
    prompt_host="\[${yellow_underline}\]\h"
elif [[ "$USER" == "root" ]]; then
    prompt_user="\[${red}\]\u"
fi

export PS1="${prompt_path}\n${prompt_user}${prompt_at}${prompt_host}${prompt_normal}: "
