"-------------------------------------------------
" golang
"-------------------------------------------------
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1


" vim-plug
call plug#begin('~/.vim/plugged')
"-------------------------------------------------
" default
"-------------------------------------------------
Plug 'tpope/vim-sensible'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"-------------------------------------------------
" golang
"-------------------------------------------------
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
