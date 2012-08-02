if [ -f ~/.dir_colors ]; then
   if command -v gdircolors > /dev/null; then
   	# os x with homebrew coreutils installed
   	eval `gdircolors ~/.dir_colors`
   elif command -v dircolors > /dev/null; then
   	eval `dircolors -b ~/.dir_colors`
   fi
fi
