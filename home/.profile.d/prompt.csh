set reset='\e[0m'
set white='\e[0;37m'
set green='\e[0;32m'
set cyan='\e[0;36m'
set yellow='\e[0;33m'
set yellow_underline='\e[4;33m'
set red='\e[0;31m'

set prompt_normal="%{${reset}%}"
set prompt_path="%{${reset}${green}%}[%~]"
set prompt_user="${prompt_normal}%n"
set prompt_at="%{${reset}${white}%}@"
set prompt_host="%{${reset}${yellow}%}%m"

if ( "$?SSH_TTY" ) then
    set prompt_host="%{${yellow_underline}%}%m"
else if ( "$user" == "root" ) then
    set prompt_user="%{${red}%}%n"
endif

setenv PROMPT "%{${prompt_path}\n${prompt_user}${prompt_at}${prompt_host}${prompt_normal}: %}"
set prompt="%{${prompt_path}\n${prompt_user}${prompt_at}${prompt_host}${prompt_normal}: %}"
