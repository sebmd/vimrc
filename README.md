# vimrc

## Dodatkowe oprogramowanie

- FZF
- ripgrep
- curl

## Instalacja

Pobranie repozytorium

```
$ mkdir ~/git
$ cd ~/git
$ git clone https://github.com/SebMD/vimrc
```

Utworzenie dowiązania symbolicznego

```
$ ln -s ~/git/vimrc ~/.vim
```

- plik `setup.sh`


vim-plug https://github.com/junegunn/vim-plug

## Ustawienia

- Taby są ustawione jako 4 znaki spacji
- Linie są automatycznie zawijane przy 80 kolumnie linii


## Zarządzanie pluginami

Komendy `PlugInstall` oraz `PlugUpdate`

## Skróty klawiszowe

| Skrót       | Opis                               |
|-------------|------------------------------------|
| `qq`        | Wyjście bez zapisania              |
| `qw`        | Zapisanie i wyjście                |
| `<leader>n` | Uruchamia menadżer plików NERDTree |

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

- FZF
- Files
- Buffers
- Colors
- Maps
