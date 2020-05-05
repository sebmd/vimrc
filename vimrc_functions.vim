
" ~/.vim/vimrc

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
