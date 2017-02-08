" start where stopped
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"set number


au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown  " recognize .md files as markdown files

set hlsearch      " highlight search matches
set incsearch     " search while characters are entered

set shiftwidth=4
set softtabstop=2
set tabstop=4
set expandtab " On pressing tab, insert 4 spaces
set noswapfile

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
