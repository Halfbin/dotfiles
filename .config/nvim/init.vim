execute pathogen#infect ()
Helptags

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:airline#extensions#tabline#enabled = 1

filetype plugin indent on
let g:rust_recommended_style = 0

syntax on
colorscheme noctu

set laststatus=2
set showcmd
set modelines=3
set number numberwidth=5
set scrolloff=8

set foldmethod=manual nofoldenable

set expandtab tabstop=2
set shiftwidth=0 shiftround
set cinoptions=l1

set ignorecase smartcase

set hidden

set backupdir=~/.local/share/nvim/backup
set directory=~/.cache/nvim/swap
set autowrite

tnoremap <Esc> <C-\><C-n>

