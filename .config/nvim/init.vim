" plugins etc ------------------------------------------------------------------
execute pathogen#infect ()
Helptags

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" tabline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = "%s "
let g:airline#extensions#tabline#left_sep      = ""
let g:airline#extensions#tabline#left_alt_sep  = ""
let g:airline#extensions#tabline#right_sep     = ""
let g:airline#extensions#tabline#right_alt_sep = ""
let g:airline#extensions#tabline#buffers_label = "b"

" syntax stuff
filetype plugin indent on
let g:rust_recommended_style = 0
syntax on
colorscheme noctu

" ui config
set laststatus=2
set showcmd
set modelines=3
set number numberwidth=5
set scrolloff=12
set cursorline

" no folding, please
set foldmethod=manual nofoldenable

" indentation and edit correction
set expandtab tabstop=2
set shiftwidth=0 shiftround
set cinoptions=l1
set textwidth=0

" match case-insensitive when lowercase
set ignorecase smartcase

" wrangle files sensibly
set hidden
set backupdir=~/.local/share/nvim/backup
set directory=~/.cache/nvim/swap
set autowrite

" my shell
set shell=fish

" use ESC to get out of terminal windows
tnoremap <Esc> <C-\><C-n>

" digraph ++ → ⧺
dig ++ 10746

" underline on :hlsearch
hi Search    cterm=bold,underline ctermfg=NONE ctermbg=0
hi IncSearch cterm=bold,underline ctermfg=NONE ctermbg=0

" highlight spilling lines
" don't use 'tw-relative, because 'tw always autowraps
set colorcolumn=81
hi ColorColumn cterm=bold ctermfg=Red ctermbg=NONE

" use CTRL-hjkl for window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" custom commands
let mapleader="\\"

" nohlsearch shortcut
nnoremap <Leader>n :noh<CR>

" easy buffer switching
nnoremap <Leader>j :bp<CR>
nnoremap <Leader>k :bn<CR>

