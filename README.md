# vimrc

## Wymagane oprogramowanie

- Git
- FZF
- ripgrep
- curl

## Instalacja

Pobranie skryptu instalacyjnego

```
curl -sLf https://git.io/JfGN7 -o setup.sh
bash ./setup.sh
```

## Ustawienia

- Taby są ustawione jako 4 znaki spacji
- Linie są automatycznie zawijane przy 80 kolumnie linii


## Zarządzanie pluginami

vim-plug https://github.com/junegunn/vim-plug

Komendy `PlugInstall` oraz `PlugUpdate`

## Skróty klawiszowe

Edytor Vim posiada klawisz o nazwie **leader**. W tej konfiguracji tym klawiszem
jest **SPACJA**. Jeśli znajdziesz zapis typu `<leader>n` oznacza on użycie kombinacji
klaiwszy `spacja n`

Skróty klawiszowe znajdują się w pliku `~/.vim/vimrc_mappings.vim`, dodatkowo
za pomocą pluginu `vim-which-key` można uzyskać pomoc dotyczącą skrótów klawiszowych
zaczynających się od znaku `\`.

Kolejnym przydatnym pluginem jest `Cheat40` można go uruchomić za pomocą komendy
`:Cheat40` lub za pomocą skrótu `<leader>?`

| Skrót       | Opis                                     |
|-------------|------------------------------------------|
| `qq`        | Wyjście bez zapisania                    |
| `qw`        | Zapisanie i wyjście                      |
| `<leader>;` | Wejście w tryb komend `:`                |
| `gh`        | Zamiennik `0`, czyli pierwszy znak linii |
| `gl`        | Zamiennik `$`, czyli ostatni znak linii  |
| `Ctrl-/`    | Komentuje linie w trybie NORMAL i VISUAL |
| `<leader>n` | Uruchamia menadżer plików NERDTree       |
| `<leader>c` | Uruchamia podręczną pomoc plugin Cheat40 |
| `<leader>f` | Uruchamia polecenie `:Files`             |

## Skróty klawiszowe Startify

| Skrót | Opis                                               |
|-------|----------------------------------------------------|
| `c`   | otwiera menadżer plików w bieżącej lokalizacji     |
| `v`   | otwiera plik konfiguracyjny `vimrc`                |
| `V`   | otwiera Vimwiki plugin do tworzenia lokalnego Wiki |
| `s`   | otwiera plik README.md ze skrótami klawiszowymi    |
| `z`   | otwiera plik konfiguracyjny `~/.zshrc`             |
| `b`   | otwiera plik konfiguracyjny `~/.bashrc`            |
| `a`   | otwiera plik z aliasami `~/.aliases`               |
| `t`   | otwiera tutorial dla edytora Vim                   |
| `h`   | otwiera pomoc Vim Reference Manual                 |
| `S`   | otwiera pomoc Vim Script Intro                     |

## Przydatne komendy

- `:FZF`     - wyszukiwanie plików
- `:Files`   - wyszukiwanie plików z podlądem
- `:Buffers` - lista buforów
- `:Colors`  - lista kolorów
- `:Maps`    - lista skrótów klawiszowych

## Zarządzanie sesjami

Do zarządzania sesjami służy plugin Startify

- `SSave [nazwa-sesji]` - zapisanie sesji
- `SLoad [nazwa-sesji]` - odtworzenie sesji
- `SClose` - zakończenie sesji
- `SDelete [nazwa-sesji]` - usunięcie sesji

## Plugin vim-sneak

- https://github.com/justinmk/vim-sneak

Sneak Commands

```
s{char}{char}
S{char}{char}

f{char}
F{char}

t{char}
F{char}
```

## Zainstalowane pluginy

- [gruvbox](https://github.com/morhetz/gruvbox)
- [vim-hybrid-material](https://github.com/kristijanhusak/vim-hybrid-material)
- [vim-tomorrow-theme](https://github.com/chriskempson/vim-tomorrow-theme)
- [vima-easy-align](https://github.com/junegunn/vim-easy-align)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
- [vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [vim-gnupg](https://github.com/jamessan/vim-gnupg)
- [undotree](https://github.com/mbbill/undotree)
- [rainbow](https://github.com/luochen1990/rainbow)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-signify](https://github.com/mhinz/vim-signify)
- [gv.vim](https://github.com/junegunn/gv.vim)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- [indentLine](https://github.com/yggdroot/indentLine)
- [gist-vim](https://github.com/mattn/gist-vim)
- [webapi-vim](https://github.com/mattn/webapi-vim)
- [vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks)
- [goyo.vim](https://github.com/junegunn/goyo.vim)
- [fzf-preview.vim](https://github.com/chengzeyi/fzf-preview.vim)
- [vim-surround](https://github.com/tpope/vim-surround)
- [vim-highlightedyank](https://github.com/machakann/vim-highlightedyank)
- [terminus](https://github.com/wincent/terminus)
- [vim-easymotion](https://github.com/easymotion/vim-easymotion)
- [vim-sneak](https://github.com/justinmk/vim-sneak)
- [quick-scope](https://github.com/unblevable/quick-scope)
- [vim-which-key](https://github.com/liuchengxu/vim-which-key)
- [vim-snippets](https://github.com/honza/vim-snippets)
- [vim-clap](https://github.com/liuchengxu/vim-clap)
- [ctrlsf.vim](https://github.com/dyng/ctrlsf.vim)
- [ultisnips)](https://github.com/SirVer/ultisnips))
- [targets.vim](https://github.com/wellle/targets.vim)
- [vim-repeat](https://github.com/tpope/vim-repeat)
- [vim-sensible](https://github.com/tpope/vim-sensible)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [limelight.vim](https://github.com/junegunn/limelight.vim)
- [fzf](https://github.com/junegunn/fzf)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [vimwiki](https://github.com/vimwiki/vimwiki)
- [vim-startify](https://github.com/mhinz/vim-startify)
- [vim-cheat40](https://github.com/lifepillar/vim-cheat40)

## Pluginy dodatkowe

- [vim-go](https://github.com/fatih/vim-go)
- [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
