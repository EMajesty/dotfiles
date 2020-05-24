" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Load plugins
call plug#begin('~/.vim/plugged')
	Plug 'tpope/vim-commentary'
	Plug 'preservim/nerdtree'
	Plug 'junegunn/vim-easy-align'
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

syntax on
filetype plugin indent on

" Spaces & tabs
set tabstop=4
set softtabstop=4

" Security
set modelines=0

set number
set ruler

set visualbell
set t_vb=

set wildmenu
set lazyredraw

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Clear search
nnoremap <leader><space> :nohlsearch<CR>

" Enable folding
set foldenable

" Open most folds by default
set foldlevelstart=10

" 10 nested folds max
set foldnestmax=10

" Space opens/closes folds
nnoremap <space> za

" Fold based on ???
" set foldmethod=???

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" Comma is leader
let mapleader=","

" jk is escape
inoremap jk <esc>

" Remap help key
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Open NERDTree automatically if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Start interactive EasyAlign in visual mode (e.g vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Populate g:airline_symbols with powerline symbols
let g:airline_powerline_fonts = 1

" Airline tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Airline theme
let g:airline_theme='deus'

" Open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Custom commands
command Pdf Pandoc pdf
