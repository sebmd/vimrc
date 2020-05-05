
" ~/.vim/vimrc

" wyjście z edytora bez zapisania
nmap qq :q<cr>

" zapisanie i wyjście z edytora
nmap qw :x<cr>

nnore j gj
nnore k gk

" użycie jj, kk lub kj jako klawisza ESC w trybie INSERT
inore jj <esc>
inore kk <esc>
inore kj <esc>

" poruszanie się po historii poleceń w trybie COMMAND-LINE za pomocą
" Ctrl-n i Ctrl-p
cnoremap <c-n> <down>
cnoremap <c-p> <up>

" przejście do edycji pliku vimrc za pomocą skrótu <leader>vv
nmap <leader>vv :vs $MYVIMRC<cr>
