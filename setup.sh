#!/bin/bash

echo "Tworzę katalogi w ~/.vim/"
mkdir -p ~/.vim/tmp/{backup,view,swap,viminfo}
mkdir -p ~/.vim/colors
mkdir ~/.vim/autoload

echo "Pobieram vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Pobieram tematy kolorystyczne"
curl -flo ~/.vim/colors/solarized.vim \
    https://raw.githubusercontent.com/altercation/solarized/master/vim-colors-solarized/colors/solarized.vim

curl -flo ~/.vim/autoload/togglebg.vim \
    https://raw.githubusercontent.com/altercation/solarized/master/vim-colors-solarized/autoload/togglebg.vim

curl -flo ~/.vim/colors/gruvbox.vim \
    https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim

curl -flo ~/.vim/autoload/gruvbox.vim \
    https://raw.githubusercontent.com/morhetz/gruvbox/master/autoload/gruvbox.vim

curl -flo ~/.vim/colors/hybrid_material.vim \
    https://raw.githubusercontent.com/kristijanhusak/vim-hybrid-material/master/colors/hybrid_material.vim

curl -flo ~/.vim/colors/hybrid_reverse.vim \
    https://raw.githubusercontent.com/kristijanhusak/vim-hybrid-material/master/colors/hybrid_reverse.vim

curl -flo ~/.vim/colors/Tomorrow.vim \
    https://raw.githubusercontent.com/chriskempson/vim-tomorrow-theme/master/colors/Tomorrow.vim

curl -flo ~/.vim/colors/Tomorrow-Night.vim \
    https://raw.githubusercontent.com/chriskempson/vim-tomorrow-theme/master/colors/Tomorrow-Night.vim

curl -flo ~/.vim/colors/Tomorrow-Night-Blue.vim \
    https://raw.githubusercontent.com/chriskempson/vim-tomorrow-theme/master/colors/Tomorrow-Night-Blue.vim.vim

curl -flo ~/.vim/colors/Tomorrow-Night-Bright.vim \
    https://raw.githubusercontent.com/chriskempson/vim-tomorrow-theme/master/colors/Tomorrow-Night-Bright.vim

curl -flo ~/.vim/colors/Tomorrow-Night-Eighties.vim \
    https://raw.githubusercontent.com/chriskempson/vim-tomorrow-theme/master/colors/Tomorrow-Night-Eighties.vim

echo "Instaluję pluginy"
vim -c ":PlugInstall" -c ":q" -c ":q"
