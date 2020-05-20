call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'altercation/vim-colors-solarized'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'cormacrelf/vim-colors-github'
Plug 'arzg/vim-colors-xcode'
Plug 'tpope/vim-sleuth'

call plug#end()

""" Airline...

let g:airline#extensions#branch#enabled = 1 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_detect_spell = 1
let g:airline_detect_spelllang = 1
"let g:airline_powerline_fonts = 1
"let g:airline_theme = "github"
"let g:lightline = { 'colorscheme': 'github' }

""" YCM (You complete me)...

"let g:ycm_error_symbol = '!'
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_auto_trigger = 0

""" Rest of the stuff...

" Use a slightly darker background, like GitHub inline code blocks
"let g:github_colors_soft = 1

" More blocky diff markers in signcolumn (e.g. GitGutter)
"let g:github_colors_block_diffmark = 0

set nocompatible

set confirm
set ruler
set path+=**

"colorscheme xcodedarkhc
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
set colorcolumn=90
highlight ColorColumn ctermbg=darkgrey

" Display relative line number
set relativenumber

" Enable scrolling with mouse.
" Note: I don't usually use mouse for navigation, but sometimes I might start
" scrolling with mouse out of habit
set mouse=a

" Spell checking
set spelllang=en_us

" Map TAB key for autocompletion
function! CleverTab()
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	else
		return "\<C-N>"
	endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

