set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on

set number
set relativenumber


"set cursorline
"set cursorcolumn


set shiftwidth=4
set tabstop=4
set expandtab
set nobackup

set scrolloff=10

set incsearch
set ignorecase
set smartcase

set showcmd
set showmode
set showmatch
set hlsearch

set history=1000

set wildmenu
set wildmode=list:longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx




let mapleader=","

"MAPPINGS ---------------------------------------------------


nnoremap <leader>sr :w <CR> :source ~/.vimrc<CR>
nnoremap <C-s> :w <CR>
map <C-n> :NERDTreeToggle<CR>
inoremap jj <ESC>
nnoremap <space><space> :wq<CR>



" PYTHON MAPPINGS ---
nnoremap <F5> :w <CR> :!clear <CR> :!python3 % <CR>

" splitting ---

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l




" }}}

"VIMSCRIPT ----------------------------------------------------
" enable code folding

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab

if version >= 703
    set undodir=~/.vim/backup
    set undofile 
    set undoreload=10000
endif

" }}}

" PLUGINS --------------------------------------

call plug#begin('~/.vim/plugged')
    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    Plug 'jiangmiao/auto-pairs'    
    Plug 'valloric/youcompleteme'
call plug#end()

let NERDTREEQuitOnOpen=1
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$']

" }}}


" STATUS -------------------------------------------------
" change status bar
set statusline=

set statusline+=\ %F\ %M\ %Y\ %R

set statusline+=%=

set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%

set laststatus=2

" }}}
