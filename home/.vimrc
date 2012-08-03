" Vundle and bundles configuration
source $HOME/.bundles.vim

" to install bundles the first time:
" vim -u ~/.bundles.vim +BundleInstall +q

set encoding=utf-8
inoremap ii <Esc>

set backupdir=./.backup,~/.backup
set directory=./.backup,~/.backup

set ruler
set number
set visualbell

" buffers
set hidden
nnoremap gb :buffer 
nnoremap g, :bprevious<cr>
nnoremap g. :bnext<cr>
au BufEnter * lcd %:p:h " change to directory of file

set laststatus=2
let g:Powerline_symbols='unicode'

" files
set wildmode=list:longest,full

" searching
set hlsearch
set ignorecase
set smartcase
nnoremap <silent> <c-l> :noh<cr><c-l>

" indentation
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
" I like a darker background
highlight Normal guibg=black

set scrolloff=2

let g:snippets_dir="~/.vim/bundle/snipmate.vim/snippets/,~/.snippets"

au BufRead,BufNewFile {*.md,*.mkd,*.markdown} set ft=markdown
au vimenter * if !argc() | NERDTree | endif

" autocomplete
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1
set completeopt=menuone,longest,preview
autocmd FileType *
    \ if &omnifunc != '' |
    \   call SuperTabChain(&omnifunc, '<c-p>') |
    \ endif

" don't double indent
let g:pyindent_open_paren = '&sw2'

" don't gobble indentation for comments
inoremap # X#

set nofoldenable
let g:pymode_folding = 0

let g:yankring_history_dir = '$HOME/.vim'

autocmd BufRead,BufNewFile {*.txt,*.md,*.mkd,*.markdown} call SetProseOptions()
function! SetProseOptions()
    " inspired by:
    " http://contsys.tumblr.com/post/491802835/vim-soft-word-wrap
    " http://www.reddit.com/r/vim/comments/ni0c2/vim_for_prose_what_are_your_tips/
    " soft word wrap
    setlocal formatoptions=1
    setlocal linebreak
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
    setlocal display=lastline
    " spell check
    setlocal spell
    " if you use two spaces between sentences:
    " setlocal cpoptions+=J
    " if you want a gutter on the left
    " setlocal foldcolumn=5
endfunction

" no toolbar
if has('gui_running')
    set guioptions-=T
endif
