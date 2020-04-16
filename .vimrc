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
set colorcolumn=80
highlight ColorColumn ctermbg=darkgrey

set relativenumber

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
