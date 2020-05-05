
" ~/.vim/vimrc

" Startify
let g:startify_session_dir = '~/.vim/startify_session'

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

let g:startify_commands = [
    \ {'c': ['Current Directory', 'e .']},
    \ {'v': ['VIMRC', 'e $MYVIMRC']},
    \ {'V': ['Vimwiki', 'VimwikiIndex']},
    \ {'z': ['ZSHRC', 'e ~/.zshrc']},
    \ {'b': ['Bashrc', 'e ~/.bashrc']},
    \ {'a': ['Aliases', 'e ~/.aliases']},
    \ {'t': ['Vim Tutor', '! vimtutor']},
    \ {'h': ['Vim Refernce', 'h ref']},
    \ {'S': ['Vim Script Intro', 'h vim-script-intro']},
    \ ]

hi StartifyHeader guifg=#FFD700

let g:startify_custom_header = [ \
    \ ' Vim Startify ',
    \ '--------------'
    \ ]
