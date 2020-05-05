
" ~/.vim/vimrc

function! AppendModeline()
    let l:modeline = printf(" vim: set fdm=%s ts=%d sw=%d tw=%d %set :",
        \ &fdm, &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
    let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
    call append(line("$"), l:modeline)
endfunction

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
