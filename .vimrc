call plug#begin('~/.vim/plugged')
"-------------------------------------------------
" default
"-------------------------------------------------
Plug 'tpope/vim-sensible'

"-------------------------------------------------
" golang
"-------------------------------------------------
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
