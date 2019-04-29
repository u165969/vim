#!/bin/bash
#create a directory for .swp
mkdir -p ~/.vim/tmp

#set .vimrc
cp .vimrc ~/.vimrc

#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#mkdir for a colorscheme plugin
mkdir -p ~/.vim/colors

#plug-install
cd ~
vim +PlugInstall
