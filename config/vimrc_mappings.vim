
" ~/.vim/vimrc

" wyjście z edytora bez zapisania
nmap qq :q<cr>

nmap <leader>q :q<cr>

" zapisanie i wyjście z edytora
nmap qw :x<cr>

nnore j gj
nnore k gk

" leader + ; wchodzi do trybu COMMAND
map <leader>; :

" użycie jj, kk lub kj jako klawisza ESC w trybie INSERT
inore jj <esc>
inore kk <esc>
inore kj <esc>

" poruszanie się po historii poleceń w trybie COMMAND-LINE za pomocą
" Ctrl-j i Ctrl-k dodatkowo w lewo i w prawo za pomocą Ctrl-h i Ctrl-l
cmap <c-k> <up>
cmap <c-j> <down>
cmap <c-h> <left>
cmap <c-l> <right>

" poruszanie kursorem w trybie INSERT nie wymaga wejścia w tryb NORMAL
" Ctrl-h, Ctrl-j, Ctrl-k i Ctrl-l
inoremap <c-k> <up>
inoremap <c-j> <down>
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

nmap <leader>cd :cd %:p:h<cr>:pwd<cr>  " <leader>cd zmienia katalog na katalog edytowanego pliku

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

" Ctrl-/ komentuje linie
nnoremap <c-_> :Commentary<cr>
vnoremap <c-_> :Commentary<cr>

" uruchamia plugin Cheat40
nnoremap <leader>c :Cheat40<cr>

" kopiuj i wklej do schowka systemowego
vnoremap <c-c> "*y :let @+=@*<cr>
map <c-p> "+P

" odtwarza makro 'a'
noremap Q @a
vnoremap Q :norm @a<cr>

" wyłączenie podświetlania wyszukiwanego wyrażenia
nmap th :nohl<cr>

" ustawia podzielone okno jako główne (full screen)
nmap <leader>o :only<cr>

" Pluginy

" NERDTree <leader>n
nnoremap <silent> <expr> <Leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

nnoremap <leader>e :CocCommand explorer<cr>

" FZF / FZF.vim
nnoremap <leader>f :Files<cr>

" vim-sneak
" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" I like quickscope better for this since it keeps me in the scope of a single
" line
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T

" Pierwsze mapowanie dla '\'
let g:which_key_map['/'] = [ 'Commentary'     , 'comment'             ]
let g:which_key_map[';'] = [ ':Commands'      , 'commands'            ]
let g:which_key_map['='] = [ '<C-W>='         , 'balance windows'     ]
let g:which_key_map['S'] = [ ':Startify'      , 'start screen'        ]
let g:which_key_map['T'] = [ ':Rg'            , 'search text'         ]
let g:which_key_map['d'] = [ ':bd'            , 'delete buffer'       ]
let g:which_key_map['e'] = [ 'NERDTreeToggle' , 'NERDTree'            ]
let g:which_key_map['f'] = [ ':Files'         , 'search files'        ]
let g:which_key_map['h'] = [ '<C-W>s'         , 'split below'         ]
let g:which_key_map['v'] = [ '<C-W>v'         , 'split right'         ]
let g:which_key_map['z'] = [ 'Goyo'           , 'zen'                 ]

" t - toggle
" D - dot.files
" s - search
" g - git
" c - clap
" w - windows
" b - buffers

let g:which_key_map.D = {
    \ 'name' : '+dot.files',
    \ 'b' : [':e ~/.bashrc'                     , 'bashrc'              ],
    \ 'c' : [':e ~/.vim/vimrc_plugins_conf.vim' , 'vimrc_plugins_conf'  ],
    \ 'm' : [':e ~/.vim/vimrc_mappings.vim'     , 'vimrc_mappings'      ],
    \ 'p' : [':e ~/.vim/vimrc_plugins.vim'      , 'vimrc_plugins'       ],
    \ 's' : [':e ~/.vim/vimrc_settings.vim'     , 'vimrc_settings'      ],
    \ 'v' : [':e $MYVIMRC'                      , 'vimrc'               ],
    \ 'z' : [':e ~/.zshrc'                      , 'zshrc'               ],
    \ }

let g:which_key_map.t = {
    \ 'name' : '+toggle',
    \ 'p' : [':set paste!'             , 'toggle paste'             ],
    \ 's' : [':Startify'               , 'Startify'                 ],
    \ 'n' : [':set nonumber!'          , 'line-numbers'             ],
    \ 'r' : [':set norelativenumber!'  , 'relative line nums'       ],
    \ 'P' : [':let @/ = ""'            , 'remove search highlight'  ],
    \ 'v' : [':Vista!!'                , 'tag viewer'               ],
    \ }

let g:which_key_map.s = {
    \ 'name' : '+search',
    \ '/' : [':History/'     , 'history'            ],
    \ ';' : [':Commands'     , 'commands'           ],
    \ 'a' : [':Ag'           , 'text Ag'            ],
    \ 'b' : [':BLines'       , 'current buffer'     ],
    \ 'B' : [':Buffers'      , 'open buffers'       ],
    \ 'c' : [':Commits'      , 'commits'            ],
    \ 'C' : [':BCommits'     , 'buffer commits'     ],
    \ 'f' : [':Files'        , 'files'              ],
    \ 'g' : [':GFiles'       , 'git files'          ],
    \ 'G' : [':GFiles?'      , 'modified git files' ],
    \ 'h' : [':History'      , 'file history'       ],
    \ 'H' : [':History:'     , 'command history'    ],
    \ 'l' : [':Lines'        , 'lines'              ],
    \ 'm' : [':Marks'        , 'marks'              ],
    \ 'M' : [':Maps'         , 'normal maps'        ],
    \ 'p' : [':Helptags'     , 'help tags'          ],
    \ 'P' : [':Tags'         , 'project tags'       ],
    \ 's' : [':Snippets'     , 'snippets'           ],
    \ 'S' : [':Colors'       , 'color schemes'      ],
    \ 't' : [':Rg'           , 'text Rg'            ],
    \ 'T' : [':BTags'        , 'buffer tags'        ],
    \ 'w' : [':Windows'      , 'search windows'     ],
    \ 'y' : [':Filetypes'    , 'file types'         ],
    \ 'z' : [':FZF'          , 'FZF'                ],
    \ }

let g:which_key_map.g = {
    \ 'name' : '+git',
    \ 'a' : [':Git add .'                     , 'add all'               ],
    \ 'A' : [':Git add %'                     , 'add current'           ],
    \ 'b' : [':Git blame'                     , 'blame'                 ],
    \ 'B' : [':GBrowse'                       , 'browse'                ],
    \ 'c' : [':Git commit -m "autocommit"'    , 'commit'                ],
    \ 'd' : [':Git diff'                      , 'diff'                  ],
    \ 'D' : [':Gdiffsplit'                    , 'diff split'            ],
    \ 'g' : [':GGrep'                         , 'git grep'              ],
    \ 'G' : [':Gstatus'                       , 'status'                ],
    \ 'h' : [':GitGutterLineHighlightsToggle' , 'highlight hunks'       ],
    \ 'H' : ['<Plug>(GitGutterPreviewHunk)'   , 'preview hunk'          ],
    \ 'j' : ['<Plug>(GitGutterNextHunk)'      , 'next hunk'             ],
    \ 'k' : ['<Plug>(GitGutterPrevHunk)'      , 'prev hunk'             ],
    \ 'l' : [':Git log'                       , 'log'                   ],
    \ 'p' : [':Git push'                      , 'push'                  ],
    \ 'P' : [':Git pull'                      , 'pull'                  ],
    \ 'r' : [':GRemove'                       , 'remove'                ],
    \ 's' : ['<Plug>(GitGutterStageHunk)'     , 'stage hunk'            ],
    \ 't' : [':GitGutterSignsToggle'          , 'toggle signs'          ],
    \ 'u' : ['<Plug>(GitGutterUndoHunk)'      , 'undo hunk'             ],
    \ 'v' : [':GV'                            , 'view commits'          ],
    \ 'V' : [':GV!'                           , 'view buffer commits'   ],
    \ }

let g:which_key_map.c = {
    \ 'name' : '+clap',
    \ 'bc'   : [':Clap bcommits'        , 'bcommits'        ],
    \ 'bl'   : [':Clap blines'          , 'blines'          ],
    \ 'bu'   : [':Clap buffers'         , 'buffers'         ],
    \ 'col'  : [':Clap colors'          , 'colors'          ],
    \ 'com'  : [':Clap command'         , 'command'         ],
    \ 'comh' : [':Clap command_history' , 'command_history' ],
    \ 'comm' : [':Clap commits'         , 'commits'         ],
    \ 'flr'  : [':Clap filer'           , 'filer'           ],
    \ 'fls'  : [':Clap files'           , 'files'           ],
    \ 'flt'  : [':Clap filetypes'       , 'filetypes'       ],
    \ 'gf'   : [':Clap gfiles'          , 'gfiles'          ],
    \ 'gdf'  : [':Clap git_diff_files'  , 'git_diff_files'  ],
    \ 'gif'  : [':Clap git_files'       , 'git_files'       ],
    \ 'gr'   : [':Clap grep'            , 'grep'            ],
    \ 'grp'  : [':Clap grep2'           , 'grep2 (maple)'   ],
    \ 'ht'   : [':Clap help_tags'       , 'help_tags'       ],
    \ 'hs'   : [':Clap hist/'           , 'hist/'           ],
    \ 'hst'  : [':Clap hist:'           , 'hist:'           ],
    \ 'hi'   : [':Clap history'         , 'history'         ],
    \ 'j'    : [':Clap jumps'           , 'jumps'           ],
    \ 'l'    : [':Clap lines'           , 'lines'           ],
    \ 'lo'   : [':Clap loclist'         , 'loclist'         ],
    \ 'm'    : [':Clap maps'            , 'maps'            ],
    \ 'ma'   : [':Clap marks'           , 'marks'           ],
    \ 'p'    : [':Clap proj_tags'       , 'proj_tags'       ],
    \ 'pr'   : [':Clap providers'       , 'providers'       ],
    \ 'q'    : [':Clap quickfix'        , 'quickfix'        ],
    \ 's'    : [':Clap search_history'  , 'search_history'  ],
    \ 't'    : [':Clap tags'            , 'tags'            ],
    \ 'w'    : [':Clap windows'         , 'windows'         ],
    \ 'y'    : [':Clap yanks'           , 'yanks'           ],
    \ }

let g:which_key_map['w'] = {
    \ 'name' : '+windows' ,
    \ 'w' : ['<C-W>w'     , 'other-window'          ],
    \ 'd' : ['<C-W>c'     , 'delete-window'         ],
    \ '-' : ['<C-W>s'     , 'split-window-below'    ],
    \ '|' : ['<C-W>v'     , 'split-window-right'    ],
    \ '2' : ['<C-W>v'     , 'layout-double-columns' ],
    \ 'h' : ['<C-W>h'     , 'window-left'           ],
    \ 'j' : ['<C-W>j'     , 'window-below'          ],
    \ 'l' : ['<C-W>l'     , 'window-right'          ],
    \ 'k' : ['<C-W>k'     , 'window-up'             ],
    \ 'H' : ['<C-W>5<'    , 'expand-window-left'    ],
    \ 'J' : ['resize +5'  , 'expand-window-below'   ],
    \ 'L' : ['<C-W>5>'    , 'expand-window-right'   ],
    \ 'K' : ['resize -5'  , 'expand-window-up'      ],
    \ '=' : ['<C-W>='     , 'balance-window'        ],
    \ 's' : ['<C-W>s'     , 'split-window-below'    ],
    \ 'v' : ['<C-W>v'     , 'split-window-below'    ],
    \ '?' : ['Windows'    , 'fzf-window'            ],
    \ }

let g:which_key_map.b = {
    \ 'name' : '+buffer' ,
    \ '1' : ['b1'        , 'buffer 1'           ],
    \ '2' : ['b2'        , 'buffer 2'           ],
    \ 'd' : ['bd'        , 'delete-buffer'      ],
    \ 'f' : ['bfirst'    , 'first-buffer'       ],
    \ 'h' : ['Startify'  , 'home-buffer'        ],
    \ 'l' : ['blast'     , 'last-buffer'        ],
    \ 'n' : ['bnext'     , 'next-buffer'        ],
    \ 'p' : ['bprevious' , 'previous-buffer'    ],
    \ '?' : ['Buffers'   , 'fzf-buffer'         ],
    \ }
