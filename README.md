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
