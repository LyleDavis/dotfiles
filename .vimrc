set t_Co=256
set termguicolors

packadd! fugitive
packadd! nerdtree
packadd! onedark.vim
packadd! vim-airline
packadd! vim-polyglot
packadd! vim-gitgutter

let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
" let g:airline_theme='onedark'
syntax on
set showmatch
colorscheme onedark
filetype plugin indent on
set background=dark
set number
" let g:airline_theme='bubblegum'

" pane switching mappings - using ctrl-hjkl
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set nocompatible

" show existing tabs as 8 spaces
set tabstop=8
set softtabstop=0
" spaces rather than tabs
set expandtab
set smarttab
set shiftwidth=2
" autoindent
set autoindent

" highlight search results
set hlsearch

" matching brackets
set showmatch
" case insensite matching
set ignorecase
" use mouse for selection
set mouse=a

" NERDTree
let NERDTreeShowHidden=1

" make background transparent - onedark theme is slightly off
autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
  \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif


" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
  \ quit | endif
