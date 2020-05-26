" Szyfrowanie

" ~/.vim/vimrc

" Szyfrowanie OpenSSL
augroup OpenSSL
  autocmd!
  autocmd BufReadPre,FileReadPre *.crypted set viminfo=
  autocmd BufReadPre,FileReadPre *.crypted set noswapfile noundofile nobackup
  autocmd BufReadPost   *.crypted :%!openssl enc -d -aes-256-cbc -a -salt
  autocmd BufReadPost   *.crypted |redraw!
  autocmd BufWritePre   *.crypted :%!openssl enc -e -aes-256-cbc -a -salt
  autocmd BufWritePost  *.crypted u
  autocmd VimLeave      *.crypted :!clear
augroup END

" Parametry dla plików z rozszerzeniem .vienc przy standardowym szyfrowaniu
augroup VIMCRYPT
    autocmd!
    autocmd BufReadPre,FileReadPre *.vienc set viminfo=
    autocmd BufReadPre,FileReadPre *.vienc set noswapfile noundofile nobackup
augroup END

if has('vim')
  set cm=blowfish2
  " set key=dupa123
endif

" Szyfrowanie GPG
let g:GPGPreferSymmetric = 0
let g:GPGUseAgent = 1
let g:GPGPreferArmor = 1
"let g:GPGPreferSign = 1
let g:GPGDefaultRecipients = ["0x1111111111111111"]
let g:GPGFilePattern = '*.\(gpg\|asc\|pgp\)\(.md\)\='
