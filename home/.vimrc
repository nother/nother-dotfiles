" Vundle and bundles configuration
source $HOME/.bundles.vim

" to install bundles the first time:
" vim -u ~/.bundles.vim +BundleInstall +q

" configuration (which may depend on bundles)

:inoremap ii <Esc>

set nowritebackup
set nobackup

set vb
set ruler

set wildmode=list:longest,full

set hlsearch
set ignorecase
set smartcase

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set autoindent
set backspace=indent,eol,start
set showmatch

syntax on
set background=dark
colorscheme solarized

au BufEnter * lcd %:p:h "change to directory of file
au BufRead,BufNewFile {*.md,*.mkd,*.markdown} set ft=markdown

let g:yankring_history_dir = '$HOME/.vim'

if has("gui_macvim")
   macm Window.Select\ Previous\ Tab  key=<C-k>
   macm Window.Select\ Next\ Tab      key=<C-j>
else
   nnoremap <c-j> :tabprevious<cr>
   nnoremap <c-k> :tabnext<cr>
   nnoremap <c-l> :tabedit 
endif
