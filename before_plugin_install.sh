#!/bin/bash
cp .vimrc ~/.vimrc

#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#mkdir for a colorscheme plugin
mkdir ~/.vim/colors
