#!/bin/bash

echo "Tworzę katalogi w ~/.vim/"
mkdir -p ~/.vim/tmp/{backup,view,swap,viminfo}
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/autoload

echo "Pobieram vim-plug"
curl -fLo autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Instaluję pluginy"
vim -c ":PlugInstall" -c ":q" -c ":q"
