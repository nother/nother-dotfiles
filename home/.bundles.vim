set nocompatible  " be iMproved
filetype on       " for os x
filetype off      " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" text
Bundle 'tpope/vim-surround'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'ervandew/supertab'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'nother/snipmate-snippets'
" python
if has('python')
    Bundle 'klen/python-mode'
endif
Bundle 'nvie/vim-flake8'
" javacript
Bundle 'pangloss/vim-javascript'
Bundle 'leshill/vim-json'
Bundle 'itspriddle/vim-jquery'
" other file types
Bundle 'groenewege/vim-less'
Bundle 'mutewinter/nginx.vim'
Bundle 'hallison/vim-markdown'
" colors
Bundle 'altercation/vim-colors-solarized'
" scm
if executable('p4')
    Bundle 'vim-scripts/genutils'
    Bundle 'pydave/vim-perforce'
endif
Bundle 'tpope/vim-fugitive'
" writing
Bundle 'mikewest/vimroom'
" misc
Bundle 'vim-scripts/YankRing.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T'
Bundle 'Lokaltog/vim-powerline'
Bundle 'sjl/gundo.vim'

filetype plugin indent on  " required!
