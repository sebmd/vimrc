
" ~/.vim/vimrc

" przeładowanie .vimrc po zapisaniu pliku
autocmd! BufWritePost $MYVIMRC source % | redraw

" otworzenie pliku tam gdzie skończyłem edycję
autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent! loadview
