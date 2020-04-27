call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'altercation/vim-colors-solarized'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

call plug#end()

""" Airline...

let g:airline#extensions#branch#enabled = 1 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_detect_spell = 1
let g:airline_detect_spelllang = 1
let g:airline_powerline_fonts = 1

""" Rest of the stuff...

set nocompatible

set confirm
set ruler
set path+=**

colorscheme torte
syntax enable
set background=dark

" Tab size
set tabstop=4
set shiftwidth=4

filetype plugin on
filetype indent plugin on

" Display line numbers
set number

" Enable autocomplition
set wildmenu

" Highlight search
" set hlsearch
" set incsearch

" To remove search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Visual ruler
" set colorcolumn=80
" highlight ColorColumn ctermbg=darkgrey

set relativenumber
