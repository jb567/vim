function! Reg()
  reg
  echo "Register: "
  let char = nr2char(getchar())
  if  char != "\<Esc>"
    execute "normal! \"" . char . "p"
  endif
  redraw
endfunction
command! -nargs=0 Reg call Reg()
nnoremap gs :Reg<cr>
"Cleans written buffers
function! s:wipeout()
  let tpbl=[]
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
  let wiped = 0
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1 && !getbufvar(v:val,"&mod")')
    silent execute 'bwipeout!' buf
    let wiped += 1
  endfor
  echom wiped . ' buffers wiped'
endfunction
command! Wipeout call s:wipeout()

function! RenderLatex()
  Start!latexmk -pdf -new-viewer- -pvc %
endfunction
command! Rlatex call RenderLatex()
