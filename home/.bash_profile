files=$(ls ~/.profile.d/private/*.sh ~/.profile.d/*.sh 2>/dev/null)
for file in ${files}; do
	source ${file}
done

if [ -f /usr/local/etc/bash_completion ]; then
   source /usr/local/etc/bash_completion
fi

# for iTerm / Terminal.app
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
