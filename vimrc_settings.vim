syntax on
set number
set relativenumber
set textwidth=80
set wrap

" ustawienie tabulatora
set ts=4 sw=4 sts=4 et sta

set autoindent

set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix

set noshowmode
set noruler
set showcmd
set showmatch

set hidden
set autochdir

set list
" set listchars=tab:\⇥\ ,trail:·,extends:>,precedes:<,nbsp:+
set listchars=nbsp:⦸
set listchars+=tab:▸\ ,
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=trail:•
set fillchars+=vert:\ 
set showbreak=↪

" kolorystyka
set termguicolors
set t_Co=256
set background=dark
colorscheme gruvbox

" dzielenie okien
set splitright
set splitbelow

set backspace=indent,eol,start
set clipboard=unnamedplus
set mouse=a
set hlsearch
set ignorecase
set incsearch
set smartcase
set ttyfast
set updatetime=300     " milisekundy bezczyności, kiedy zostaje zapisany plik do pliku swap wartość standardowa to 4000 ms
set novisualbell
set wildmenu
set wildmode=list:longest,full
set fdm=marker
set modeline
set modelines=5
set nojoinspaces
setlocal spelllang=pl
set viewoptions-=options
set viminfo+=n~/.vim/tmp/viminfo/viminfo
set viewdir=~/.vim/tmp/view/
set nobackup
" set backup
" set backupdir=~/.vim/tmp/backup/
" set backupskip=/tmp/*,/Private/tmp/*,*.gpg,*.asc
set directory=~/.vim/tmp/swap//
set undodir=~/.vim/tmp/undo//
set undofile
set undolevels=10000
set history=10000
set shell=/bin/bash

" ustawia ripgrep do przeszukiwania plików
if executable('rg')
    set grepprg=rg\ --color=never\ --vimgrep
    set grepformat=%f:%l:%c:%m
endif
