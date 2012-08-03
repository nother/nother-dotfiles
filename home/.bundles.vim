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
" Bundle 'msanders/snipmate.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate'

"Bundle 'andrewle/vim-autoclose'
" python
Bundle 'klen/python-mode'
Bundle 'nvie/vim-flake8'
" Bundle 'sontek/rope-vim'
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
Bundle 'vim-scripts/genutils'
Bundle 'pydave/vim-perforce'
Bundle 'tpope/vim-fugitive'
" writing
Bundle 'mikewest/vimroom'
Bundle 'honza/writer.vim'
" misc
Bundle 'vim-scripts/YankRing.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T'
Bundle 'Lokaltog/vim-powerline'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'sjl/gundo.vim'

filetype plugin indent on  " required!
