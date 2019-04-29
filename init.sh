#!/bin/bash

# install vim-plug, which is a kind of plugin-managers
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# swap files go to:
mkdir -p ~/.vim/tmp
# color-scheme files go to:
mkdir -p ~/.vim/colors


cp .vimrc ~/.vimrc

# install plugins
cd ~
vim +PlugInstall
