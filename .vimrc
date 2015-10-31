let $PYTHONPATH='/usr/lib/python3.5/site-packages'
set laststatus=2
execute pathogen#infect()
syntax on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab number relativenumber
let g:jsx_ext_required = 0

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
