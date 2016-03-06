set nocompatible

execute pathogen#infect ()

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:airline#extensions#tabline#enabled = 1

set encoding=utf-8
filetype plugin indent on

syntax on
colorscheme noctu

set laststatus=2
set showcmd
set modeline
set modelines=3
set number
set numberwidth=5
" set relativenumber

set foldmethod=manual
set nofoldenable

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set shiftround

set ignorecase smartcase

set scrolloff=5

set nobackup
set nowritebackup
set autoread
set directory=~/.vimtmp,/var/tmp

