files=$(ls ~/.profile.d/private/*.sh ~/.profile.d/*.sh 2>/dev/null)
for file in ${files}; do
	source ${file}
done

# for iTerm / Terminal.app
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
