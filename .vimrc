"start where stopped
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif



""""""""""""""""""""""""""""""""""""""""""""""""
" Enable folding lines according to indent, 
" za -to toggle, zo -to open, zc -to close fold
" http://vim.wikia.com/wiki/Folding
""""""""""""""""""""""""""""""""""""""""""""""""
"set foldmethod=indent
"set foldmethod=syntax


""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Vundler for plugin management
""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim




" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
filetype plugin indent on    " required


"""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","       " leader is comma

" turn off search highlight with ,-<space>
nnoremap <leader><space> :nohlsearch<CR>

" Invoke Ctrl-p with c-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


""""""""""""""""""""""""""""""""""""""""""""""""
" General Configuration
""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically update a file if it is changed externally
set autoread

" Height of the command bar
set cmdheight=2

set hlsearch	    " highlight search matches
set incsearch	    " search while characters are entered

" search is case-insensitive by default
set ignorecase

" Show linenumbers
set number

set showcmd	" show last command in the bottom right

set ruler	" always show current position

" Line wrap (number of cols)
set wrap	    " wrap lines only visually
" set linebreak	    " wrap only at valid characters
set textwidth=0	    " prevent vim from inserting linebreaks
set wrapmargin=0    "   in newly entered text


" show matching braces
set showmatch

set wildmenu	    " visual autocomplete for command menu

"""""""""""""""""""""""""""""""""""""""""""""""""
" Backups, Swap Files
"""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax on

" UTF-8 encoding and en_US as default encoding/language
set encoding=utf8

" Define standard filetype
set ffs=unix,dos,mac

let base16colorspace=256
set background=dark


set cursorline	" highlight current active line

"""""""""""""""""""""""""""""""""""""""""""""""""
" File Types
"""""""""""""""""""""""""""""""""""""""""""""""""
" recognize .md files as markdown files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

"""""""""""""""""""""""""""""""""""""""""""""""""
" Text and Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""
" Use smart tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set softtabstop=2

" show existing tab with 4 spaces width
set tabstop=4

" On pressing tab, insert 4 spaces
set expandtab

"set ai " Auto indent
"set si " Smart indent

" modern backspace behavior
set backspace=indent,eol,start

filetype indent on	" enable filetype specific indentation

"""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
"""""""""""""""""""""""""""""""""""""""""""""""""
" move vertically by visual line (don't skip wrapped lines) 
nnoremap j gj
nnoremap k gk


"""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-p
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'

