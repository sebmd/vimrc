
" ~/.vim/vimrc
" ~/.vim/vimrc_plugins_conf.vim

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'fatih/vim-go', { 'tag': '*' }
" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
call plug#end()
