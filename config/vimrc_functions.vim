"
" https://github.com/SebMD/vimrc
"
" ~/.vim/vimrc

" Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" WikiFiles ~/vimwiki
command! -bang -nargs=? -complete=dir WikiFiles
    \ call fzf#vim#files('~/vimwiki', fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" LS
command! -bang -complete=dir -nargs=* LS
    \ call fzf#run(fzf#wrap({'source': 'ls', 'dir': <q-args>}, <bang>0))

function! FileTime()
  let filename=expand('%:p')
  let msg=""
  let msg=msg."Mod: ".strftime("%F %T",getftime(filename))." ".filename
  echom msg
endfunction

function! CurTime()
  let ftime=""
  let ftime=ftime." ".strftime("Teraz jest: %F %T")
  echom ftime
  " return ftime
endfunction

function! AppendModeline()
    let l:modeline = printf(" vim: set fdm=%s ts=%d sw=%d tw=%d %set :",
        \ &fdm, &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
    let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
    call append(line("$"), l:modeline)
endfunction
