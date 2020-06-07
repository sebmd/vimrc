
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
    \ {'c': ['current directory', 'e .']},
    \ {'v': ['vimrc', 'e $MYVIMRC']},
    \ {'w': ['vimwiki', 'VimwikiIndex']},
    \ {'s': ['shortcuts', 'vimgrep /## Skróty klawiszowe/ ~/.vim/README.md']},
    \ {'z': ['zshrc', 'e ~/.zshrc']},
    \ {'b': ['bashrc', 'e ~/.bashrc']},
    \ {'a': ['aliases', 'e ~/.aliases']},
    \ {'t': ['Vim Tutor', '! vimtutor']},
    \ {'h': ['Vim Refernce', 'h ref']},
    \ {'S': ['Vim Script Intro', 'h vim-script-intro']},
    \ ]

hi StartifyHeader guifg=#FFD700

let g:startify_custom_header = [
    \ ' Siema! STARTIFY_USERNAME ',
    \ '--------------------------'
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

nnoremap <silent> \ :<c-u>WhichKey '\'<cr>
vnoremap <silent> \ :<c-u> :silent WhichKeyVisual '\'<cr>

let g:which_key_map = {}

hi default link WhichKey            Operator
hi default link WhichKeySeparator   DiffAdded
hi default link WhichKeyGroup       Identifier
hi default link WhichKeyDesc        Function

" autocmd! FileType which_key
" autocmd FileType which_key set laststatus=0 noshowmode noruler
    " \| autocmd BufLeave <buffer> set laststatus=1 noshowmode ruler

" Show line numbers in search rusults
let g:any_jump_list_numbers = 0

" Auto search references
let g:any_jump_references_enabled = 1

" Auto group results by filename
let g:any_jump_grouping_enabled = 0

" Amount of preview lines for each search result
let g:any_jump_preview_lines_count = 5

" Max search results, other results can be opened via [a]
let g:any_jump_max_search_results = 10

" Prefered search engine: rg or ag
let g:any_jump_search_prefered_engine = 'rg'


" Search results list styles:
" - 'filename_first'
" - 'filename_last'
let g:any_jump_results_ui_style = 'filename_first'

" Any-jump window size & position options
let g:any_jump_window_width_ratio  = 0.6
let g:any_jump_window_height_ratio = 0.6
let g:any_jump_window_top_offset   = 4

" Customize any-jump colors with extending default color scheme:
let g:any_jump_colors = { "help": "Comment" }

" Or override all default colors
let g:any_jump_colors = {
      \"plain_text":         "Comment",
      \"preview":            "Comment",
      \"preview_keyword":    "Operator",
      \"heading_text":       "Function",
      \"heading_keyword":    "Identifier",
      \"group_text":         "Comment",
      \"group_name":         "Function",
      \"more_button":        "Operator",
      \"more_explain":       "Comment",
      \"result_line_number": "Comment",
      \"result_text":        "Statement",
      \"result_path":        "String",
      \"help":               "Comment"
      \}

" Disable default any-jump keybindings (default: 0)
let g:any_jump_disable_default_keybindings = 1

" Remove comments line from search results (default: 1)
let g:any_jump_remove_comments_from_results = 1

" Custom ignore files
" default is: ['*.tmp', '*.temp']
let g:any_jump_ignored_files = ['*.tmp', '*.temp']

" Search references only for current file type
" (default: false, so will find keyword in all filetypes)
let g:any_jump_references_only_for_current_filetype = 0

" Disable search engine ignore vcs untracked files
" (default: false, search engine will ignore vcs untracked files)
let g:any_jump_disable_vcs_ignore = 0
