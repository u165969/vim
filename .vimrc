" default
set number
set directory=~/.vim/tmp

" cursor move
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a
noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^a

" yank
nnoremap x "_x

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
	autocmd BufRead,BufNewFile *.js setlocal tabstop=4 shiftwidth=4 softtabstop=4
augroup end

" auto complete braces
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap ` ``<Left>

" vim-plug
call plug#begin('~/.vim/plugged')
" default
Plug 'morhetz/gruvbox', { 'do': 'cp ~/.vim/plugged/gruvbox/colors/* ~/.vim/colors/' }
colorscheme gruvbox
set background=dark
Plug 'tpope/vim-sensible'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" html, css
Plug 'mattn/emmet-vim'

" typescript
Plug 'leafgarland/typescript-vim'

" golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1

call plug#end()
