
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
    \ {'s': ['Shortcuts', 'vimgrep /## Skróty klawiszowe/ ~/.vim/README.md']},
    \ {'z': ['ZSHRC', 'e ~/.zshrc']},
    \ {'b': ['Bashrc', 'e ~/.bashrc']},
    \ {'a': ['Aliases', 'e ~/.aliases']},
    \ {'t': ['Vim Tutor', '! vimtutor']},
    \ {'h': ['Vim Refernce', 'h ref']},
    \ {'S': ['Vim Script Intro', 'h vim-script-intro']},
    \ ]

hi StartifyHeader guifg=#FFD700

let g:startify_custom_header = [
    \ ' Vim STARTIFY_USERNAME ',
    \ '--------------'
    \ ]

" Airline
if !exists("g:airline_symbols")
  let g:airline_symbols = {}
endif
" let g:airline_theme='stellarized_dark'
let g:airline_theme                             = 'lucius'
let g:airline_powerline_fonts                   = 1
let g:airline#extensions#branch#empty_message   = "no .git"
let g:airline#extensions#whitespace#enabled     = 0
let g:airline#extensions#syntastic#enabled      = 1
let g:airline#extensions#tabline#enabled        = 1
let g:airline#extensions#tabline#tab_nr_type    = 1 " tab number
let g:airline#extensions#tabline#fnamecollapse  = 1 " /a/m/model.rb
let g:airline#extensions#hunks#non_zero_only    = 1 " git gutter
let g:airline_left_sep                          = ""
let g:airline_right_sep                         = ""

" nazwa hosta na końcu linii
" let g:airline_section_z = '%3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# :%3v [%{hostname()}]'

let g:airline#extensions#tabline#enabled    = 1
let g:airline_powerline_fonts               = 1

" unicode symbols
" let g:airline_left_sep              = '»'
" let g:airline_left_sep              = '▶'
" let g:airline_right_sep             = '«'
" let g:airline_right_sep             = '◀'
let g:airline_symbols.crypt         = '🔒'
let g:airline_symbols.linenr        = '☰'
let g:airline_symbols.linenr        = '␊'
let g:airline_symbols.linenr        = '␤'
let g:airline_symbols.linenr        = '¶'
let g:airline_symbols.maxlinenr     = ''
let g:airline_symbols.maxlinenr     = '㏑'
let g:airline_symbols.branch        = '⎇'
let g:airline_symbols.paste         = 'ρ'
let g:airline_symbols.paste         = 'Þ'
let g:airline_symbols.paste         = '∥'
let g:airline_symbols.spell         = 'Ꞩ'
let g:airline_symbols.notexists     = 'Ɇ'
let g:airline_symbols.whitespace    = 'Ξ'
" powerline symbols
" let g:airline_left_sep = "\ue0c4"
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = "\ue0c5"
" let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = 'שׂ'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" NERDTree
"autocmd vimenter * NERDTree  " uruchomienie przy starcie NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" let g:NERDTreeDirArrowExpandable = ''
" let g:NERDTreeDirArrowCollapsible = ''

let g:NERDTreeShowHidden = 1
let g:NERDTreeNaturalSort = 1
let g:NERDTreeBookmarkFile = '$HOME/.vim/NERDTreeBookmarks'
let g:NERDTreeQuitOnOpen = 3
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = 33
let g:NERDTreeAutoDeleteBuffer=1

" NERDTree
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '

" vim-sneak
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" imediately move tot the next instance of search, if you move the cursor sneak
" is back to default behavior
let g:sneak#s_next = 1

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" Cool prompts
let g:sneak#prompt = '🕵'
let g:sneak#prompt = '🔎'

" Vimwiki
let wiki = {}
let wiki.path = '~/vimwiki'
let wiki.ext = '.md'
let wiki.syntax = 'markdown'
let wiki.nested_syntax = { 'python': 'python', 'sh': 'sh' }

let g:vimwiki_list = [wiki]
let g:vimwiki_table_mappings = 0
let g:vimwiki_listsyms = '✗○◐●✓'

" vim-which-key
silent! call which_key#register('\', "g:which_key_map")
silent! call which_key#register(' ', "g:space_prefix_dict")

nnoremap <silent> \ :silent WhichKey '\'<cr>
vnoremap <silent> \ :silent <c-u> :silent WhichKeyVisual '\'<cr>

let g:which_key_map = {}

hi default link WhichKey            Operator
hi default link WhichKeySeparator   DiffAdded
hi default link WhichKeyGroup       Identifier
hi default link WhichKeyDesc        Function

" autocmd! FileType which_key
" autocmd FileType which_key set laststatus=0 noshowmode noruler
    " \| autocmd BufLeave <buffer> set laststatus=1 noshowmode ruler
