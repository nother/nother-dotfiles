" Vundle and bundles configuration
source $HOME/.bundles.vim

" to install bundles the first time:
" vim -u ~/.bundles.vim +BundleInstall +q

:inoremap ii <Esc>

set nowritebackup
set nobackup

set vb
set ruler
set hidden

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
au vimenter * if !argc() | NERDTree | endif

let g:yankring_history_dir = '$HOME/.vim'

if has("gui_macvim")
   macm Window.Select\ Previous\ Tab  key=<C-k>
   macm Window.Select\ Next\ Tab      key=<C-j>
else
   nnoremap <c-j> :tabprevious<cr>
   nnoremap <c-k> :tabnext<cr>
   nnoremap <c-l> :tabedit 
endif

autocmd BufRead,BufNewFile {*.txt,*.md,*.mkd,*.markdown} call SetProseOptions()
function SetProseOptions()
    " inspired by:
    " http://contsys.tumblr.com/post/491802835/vim-soft-word-wrap
    " http://www.reddit.com/r/vim/comments/ni0c2/vim_for_prose_what_are_your_tips/
    " soft word wrap
    set formatoptions=1
    set linebreak
    " navigate within wrapped lines
    nnoremap j gj
    nnoremap k gk
    vnoremap j gj
    vnoremap k gk
    " set an undo point at the end of sentences
    inoremap . .<C-g>u
    inoremap ! !<C-g>u
    inoremap ? ?<C-g>u
    inoremap : :<C-g>u
    " show the last line even if it is long
    set display=lastline
    " spell check
    set spell
    " if you use two spaces between sentences:
    " set cpoptions+=J
    " if you want a gutter on the left
    " set foldcolumn=5
endfunction
