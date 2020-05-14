"
" https://github.com/SebMD/vimrc
"

" WYłącza wsteczną kompatybilność z edytorem Vi
set nocompatible

" Jako klawisz Leader ustawia <spację>
let mapleader = "\<space>"

let files =  []
let files += [ '~/.vim/vimrc_plugins.vim' ]
let files += [ '~/.vim/vimrc_plugins_conf.vim' ]
let files += [ '~/.vim/vimrc_settings.vim' ]
let files += [ '~/.vim/vimrc_mappings.vim' ]
let files += [ '~/.vim/vimrc_autocmd.vim' ]
let files += [ '~/.vim/vimrc_functions.vim' ]
let files += [ '~/.vim/vimrc_abbr.vim' ]
let files += [ '~/.vim/vimrc_enc.vim' ]

for config_file in files
    if filereadable(expand(config_file))
        execute 'source ' . expand(config_file)
    else
        echo "Brak pliku " . config_file
    endif
endfor
