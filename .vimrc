"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set t_Co=256

let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:airline_theme='onedark'
syntax on
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
