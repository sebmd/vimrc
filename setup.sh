#!/bin/bash

DATE=$(date +%F-%T | tr : -)
BACKUP_DIR=~/.backup/dot.vim

      NC='\033[0m'
   BLACK='\033[0;30m'
  D_GREY='\033[1;30m'
     RED='\033[0;31m'
   L_RED='\033[1;31m'
   GREEN='\033[0;32m'
 L_GREEN='\033[1;32m'
  ORANGE='\033[0;33m'
  YELLOW='\033[1;33m'
    BLUE='\033[0;34m'
  L_BLUE='\033[1;34m'
  PURPLE='\033[0;35m'
L_PURPLE='\033[1;35m'
    CYAN='\033[0;36m'
  L_CYAN='\033[1;36m'
  L_GRAY='\033[0;37m'
   WHITE='\033[1;37m'

msg() {
    printf '%b\n' "$1" >&2
}

function msg_ok() {
    msg "${GREEN}[OK]${NC} ${1}${2}"
}

function msg_error() {
    msg "${RED}[ERROR]${NC} ${1}${2}"
    exit 1
}

function msg_warn () {
    msg "${YELLOW}[WARN]${NC} ${1}${2}"
}

function msg_info() {
    msg "${L_BLUE}[INFO]${NC} ${1}${2}"
}

function backup() {
    msg_info "Tworzę katalog kopii zapasowych: $BACKUP_DIR"
    if [[ ! -d "$BACKUP_DIR" ]]; then
        mkdir -p "$BACKUP_DIR"
    fi

    if [[ -d ~/.vim ]]; then
        mkdir "$BACKUP_DIR/$DATE"
        mv ~/.vim "$BACKUP_DIR/$DATE/"
        msg_info "Kopia zapasowa znajduje się w katalogu: $BACKUP_DIR/$DATE/"
    fi

    if [[ -f ~/.vimrc ]]; then
        mv ~/.vimrc "$BACKUP_DIR"/.vimrc-$DATE
    fi
}

function mkdirs() {
    msg_info "Tworzę katalogi w ~/.vim/"
    mkdir -p ~/.vim/tmp/{backup,view,swap,viminfo}
    mkdir ~/.vim/colors
    mkdir ~/.vim/autoload
}

function download_repo() {
    msg_info "Pobieram repozytorium vimrc"
    git clone https://github.com/SebMD/vimrc ~/.vim
    if [[ $? -ne 0 ]]; then
        msg_error "Coś poszło nie tak :("
    fi
}

function download_plug() {
    msg_info "Pobieram vim-plug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

function instalacja_pluginow() {
    msg_info "Instaluję pluginy"
    vim -c ":PlugInstall" -c ":q" -c ":q"
}

function the_end() {
    printf "${L_BLUE}Instalacja zakończona."
    printf "${NC}"
}

backup
download_repo
mkdirs
download_plug
instalacja_pluginow
the_end
