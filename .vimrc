" default
set number

" cursor move
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a
noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^a

" indent
vnoremap > >gv
vnoremap < <gv
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

augroup fileTypeIndent
	autocmd!
	autocmd BufRead,BufNewFile *.go setlocal tabstop=4 shiftwidth=4 softtabstop=4
augroup end

" auto complete braces
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>

" vim-plug
call plug#begin('~/.vim/plugged')
" default
Plug 'tpope/vim-sensible'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1

call plug#end()
