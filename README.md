# nother-dotfiles

Some of my dotfiles.

## Install

1. [homesick](https://github.com/technicalpickles/homesick)

        gem install homesick
        homesick clone nother/nother-dotfiles
        homesick symlink nother/nother-dotfiles

2. [vundle](https://github.com/gmarik/vundle/)

        git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
        vim -u ~/.bundles.vim +BundleInstall +q

3. On OS X, using [homebrew](http://mxcl.github.com/homebrew/), install gnu `ls`

        brew install coreutils
