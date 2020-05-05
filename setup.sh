#!/bin/bash

DATE=$(date +%F-%T)

if [[ -d ~./vim ]]; then
    mv ~/.vim ~/.vim_backup_$DATE
else
    mkdir ~/.vim
fi

echo "Tworzę katalogi w ~/.vim/"
mkdir -p ~/.vim/tmp/{backup,view,swap,viminfo}
mkdir ~/.vim/colors
mkdir ~/.vim/autoload

echo "Pobieram vim-plug"
curl -fLo autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

function instalacja_pluginow() {
    echo "Instaluję pluginy"
    vim -c ":PlugInstall" -c ":q" -c ":q"
}

instalacja_pluginow
