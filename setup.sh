#!/bin/bash

DATE=$(date +%F-%T | tr : -)
BACKUP_DIR=~/.backup/dot.vim

# program "rg" występuje jako pakiet ripgrep
SOFT='git rg curl'


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
}

function msg_warn () {
    msg "${YELLOW}[WARN]${NC} ${1}${2}"
}

function msg_info() {
    msg "${L_BLUE}[INFO]${NC} ${1}${2}"
}

function soft() {
    for i in $SOFT
    do
        if ! hash "$i" 2>/dev/null; then
            msg_error "Brak pakietu $i"
            printf "\nInstalacja pakietóœ dla dystrybucji typu Debian:\n\n"
            printf "\t${GREEN}sudo apt install git curl ripgrep${NC}\n"
            printf "\nInstalacja pakietów dla dystrybucji Fedora:\n\n"
            printf "\t${GREEN}sudo dnf install git curl ripgrep${NC}\n\n"
            exit 1
        fi
    done
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

function instalacja_pluginow() {
    msg_info "Pobieram vim-plug"
    curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    msg_info "Instaluję pluginy"
    vim -c ":PlugInstall" -c ":q" -c ":q"
}

function bajery() {
    sed -i s/STARTIFY_USERNAME/$USER/ ~/.vim/vimrc_plugins_conf.vim

    curl -sfLo ~/.vim/colors/base16-eighties.vim --create-dirs \
        https://raw.githubusercontent.com/chriskempson/base16-vim/master/colors/base16-eighties.vim

    curl -sfLo ~/.fonts/devicons.ttf --create-dirs \
        https://github.com/vorillaz/devicons/raw/master/fonts/devicons.ttf
    fc-cache
    mkfontdir ~/.fonts
    mkfontscale ~/.fonts
}

function the_end() {
    printf "\n${YELLOW}----------------------\n"
    printf "${L_BLUE}Instalacja zakończona.\n"
    printf "${YELLOW}----------------------\n\n"
    printf "${L_BLUE}Kopia zapasowa znajduje się w katalogu: $BACKUP_DIR/$DATE/\n\n"
    printf "${NC}"
    printf "${GREEN}Naciśnij [ANY_KEY]... ${NC}"
    /usr/bin/read -n 1 -s -r
    printf "\n\n"
}

function install() {
    soft
    backup
    download_repo
    mkdirs
    instalacja_pluginow
    bajery
    the_end
    vim
}


function main() {
    if [ $# -gt 0 ]; then
        case "$1" in
            update|-u)
                cd ~/.vim
                git pull
                exit 0
                ;;
            install|-i)
                install
                exit 0
        esac
    else
        install
    fi
}

main "$@"
