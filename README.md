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

| Skrót       | Opis                                     |
|-------------|------------------------------------------|
| `qq`        | Wyjście bez zapisania                    |
| `qw`        | Zapisanie i wyjście                      |
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


- https://github.com/morhetz/gruvbox
- https://github.com/kristijanhusak/vim-hybrid-material
- https://github.com/chriskempson/vim-tomorrow-theme
- https://github.com/junegunn/vim-easy-align
- https://github.com/scrooloose/nerdtree
- https://github.com/Xuyuanp/nerdtree-git-plugin
- https://github.com/ryanoasis/vim-devicons
- https://github.com/tpope/vim-commentary
- https://github.com/jamessan/vim-gnupg
- https://github.com/mbbill/undotree
- https://github.com/luochen1990/rainbow
- https://github.com/tpope/vim-fugitive
- https://github.com/mhinz/vim-signify
- https://github.com/junegunn/gv.vim
- https://github.com/vim-airline/vim-airline
- https://github.com/vim-airline/vim-airline-themes
- https://github.com/yggdroot/indentLine
- https://github.com/mattn/gist-vim
- https://github.com/mattn/webapi-vim
- https://github.com/MattesGroeger/vim-bookmarks
- https://github.com/junegunn/goyo.vim
- https://github.com/chengzeyi/fzf-preview.vim
- https://github.com/tpope/vim-surround
- https://github.com/machakann/vim-highlightedyank
- https://github.com/wincent/terminus
- https://github.com/easymotion/vim-easymotion
- https://github.com/justinmk/vim-sneak
- https://github.com/unblevable/quick-scope
- https://github.com/liuchengxu/vim-which-key
- https://github.com/honza/vim-snippets
- https://github.com/liuchengxu/vim-clap
- https://github.com/dyng/ctrlsf.vim
- https://github.com/SirVer/ultisnips
- https://github.com/wellle/targets.vim
- https://github.com/tpope/vim-repeat
- https://github.com/tpope/vim-sensible
- https://github.com/RRethy/vim-illuminate
- https://github.com/junegunn/limelight.vim
- https://github.com/junegunn/fzf
- https://github.com/junegunn/fzf.vim
- https://github.com/vimwiki/vimwiki
- https://github.com/mhinz/vim-startify
- https://github.com/lifepillar/vim-cheat40

## Pluginy dodatkowe

- [vim-go](https://github.com/fatih/vim-go)
- [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
