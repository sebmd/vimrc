
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
" Ctrl-j i Ctrl-k dodatkowo w lewo i w prawo za pomocą Ctrl-h i Ctrl-l
cmap <c-k> <down>
cmap <c-j> <up>
cmap <c-h> <left>
cmap <c-l> <right>

" poruszanie kursorem w trybie INSERT nie wymaga wejścia w tryb NORMAL
" Ctrl-h, Ctrl-j, Ctrl-k i Ctrl-l
inoremap <c-k> <down>
inoremap <c-j> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>

" poruszanie się pomiędzy oknami za pomocą Ctrl-[hjkl]
nmap <c-j> <c-w><c-j>
nmap <c-k> <c-w><c-k>
nmap <c-h> <c-w><c-h>
nmap <c-l> <c-w><c-l>

" przejście do edycji pliku vimrc za pomocą skrótu <leader>vv / <leader>vs
nmap <leader>vv :e $MYVIMRC<cr>
nmap <leader>vs :vs $MYVIMRC<cr>

" otworzenie pliku z mapowaniem klawiszy
nmap <leader>vm :e ~/.vim/vimrc_mappings.vim<cr>

" otworzenie pliku z pluginami
nmap <leader>vp :e ~/.vim/vimrc_plugins.vim<cr>

" zapisanie i przeładowanie konfiguracji edytora Vim
nmap <leader>r :update<cr>:source $MYVIMRC<cr>

" łączy dwie linie pozostawiając kursor w tym samym miejscu
noremap J maJ`a

" wyrównanie paragrafu '=ip' dodatkowo zawija tekst na długość 80 znaków 'gqap'
noremap <leader>a =ip gqap

" klonowanie całego paragrafu czyli kopiuj i wklej
nmap <leader>cp yap<S-}>p

" centrwanie ekranu przy przeskakiwaniu do kolejnego wyszukiwanego tekstu / ?
nnoremap n nzz
nnoremap N Nzz

" początek i koniec linii za pomocą gh i gl
nnore gl $
nnore gh 0

" przeskakiwanie pomiędzy dwoma ostatnimi buforami za pomocą klawisza TAB
nnoremap <tab> :e #<cr>

" uruchomienie terminala
nmap <leader>ts :term<cr>

" uruchomienie terminala w oknie po prawej
nmap <leader>tv :botright vertical terminal<cr>

" kopiuj i wklej do schowka systemowego
vnoremap <c-c> "*y :let @+=@*<cr>
map <c-p> "+P

" Pluginy

" NERDTree <leader>n
nnoremap <silent> <expr> <Leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
