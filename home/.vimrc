" Vundle and bundles configuration
source $HOME/.bundles.vim

" to install bundles the first time:
" vim -u ~/.bundles.vim +BundleInstall +q

:inoremap ii <Esc>

set backupdir=./.backup,~/.backup
set directory=./.backup,~/.backup

set vb
set ruler
set hidden

set wildmode=list:longest,full

set hlsearch
set ignorecase
set smartcase
nnoremap <silent> <c-l> :noh<cr><c-l>

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

let g:snippets_dir="~/.vim/bundle/snipmate.vim/snippets/,~/.snippets"

au BufEnter * lcd %:p:h "change to directory of file
au BufRead,BufNewFile {*.md,*.mkd,*.markdown} set ft=markdown
au vimenter * if !argc() | NERDTree | endif

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1
set completeopt=menuone,longest,preview

au FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
au BufWritePost *.py call Flake8()
let g:pyindent_open_paren = '&sw2'

if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

let g:yankring_history_dir = '$HOME/.vim'

nnoremap tp :tabprevious<cr>
nnoremap tn :tabnext<cr>
nnoremap te :tabedit 
nnoremap gb :buffer 

if has("gui_macvim")
   macm Window.Select\ Previous\ Tab  key=<C-k>
   macm Window.Select\ Next\ Tab      key=<C-j>
   set guifont=Menlo:h13
else
   nnoremap <c-j> :tabprevious<cr>
   nnoremap <c-k> :tabnext<cr>
endif

autocmd BufRead,BufNewFile {*.txt,*.md,*.mkd,*.markdown} call SetProseOptions()
function SetProseOptions()
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
