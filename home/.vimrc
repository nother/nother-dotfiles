" Vundle and bundles configuration
source $HOME/.bundles.vim

" to install bundles the first time:
" vim -u ~/.bundles.vim +BundleInstall +q

set encoding=utf-8
inoremap ii <Esc>

set backupdir=./.backup,~/.backup
set directory=./.backup,~/.backup

set ruler
set visualbell

" buffers
set hidden
nnoremap gb :buffer 
nnoremap g, :bprevious<cr>
nnoremap g. :bnext<cr>
autocmd BufEnter * lcd %:p:h " change to directory of file

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
" don't gobble indentation for comments
inoremap # X#

set scrolloff=2
set nofoldenable

syntax on
set background=dark
if $TERM == "xterm-256color"
    let g:solarized_termcolors=256
endif
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized
" more contrast!
highlight Normal guibg=black

" open NERDTree if vim opened without a file
"autocmd vimenter * if !argc() | NERDTree | endif

" autocomplete
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1
set completeopt=menuone,longest,preview
" fall back on keyword completion if omnicomplete does not return results
autocmd FileType *
    \ if &omnifunc != '' |
    \   call SuperTabChain(&omnifunc, '<c-p>') |
    \ endif

" move custom snippets outside of ~/.vim
let g:snippets_dir="~/.vim/bundle/snipmate.vim/snippets/,~/.snippets"

" python options
nnoremap <leader>j :RopeGotoDefinition<cr>
let g:pymode_folding = 0
" don't double indent
let g:pyindent_open_paren = '&sw2'
" speed up autocomplete
let g:pymode_rope_guess_project = 0
" don't wrap text
let g:pymode_options_other = 0

let g:yankring_history_dir = '$HOME/.vim'

if has('gui_running')
    set guioptions-=T " no toolbar
    set number
endif
