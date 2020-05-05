#!/bin/bash

echp "Pobieram vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Tworzę katalogi w ~/.vim/"
mkdir -p ~/.vim/tmp/{backup,view,swap,viminfo}
mkdir -p ~/.vim/colors
