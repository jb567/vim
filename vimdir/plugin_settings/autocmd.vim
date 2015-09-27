"Detect file type {{{
au BufNewFile,BufRead *.vim setfiletype vim
au BufNewFile,BufRead *vimrc setfiletype vim
au BufNewFile,BufRead *.md setfiletype markdown
"}}}

"Act based on file type {{{
au Filetype vim
      \ setlocal syntax=vim        |
      \ setlocal foldmethod=marker |
      \ setlocal foldmarker={{{,}}}
au Filetype nerdtree
      \ nmap <buffer> <leader>cd :NERDTreeCWD<CR>
au Filetype text
      \ setlocal formatprg=par
autocmd FileType gitcommit setlocal textwidth=72 |
      \ setlocal spell
autocmd BufWrite *.scss GulpExt css
"}}}

"focus shifters {{{
au FocusLost * :silent! wall
au VimResized * :wincmd =
" }}}
