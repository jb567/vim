set laststatus=2
set noshowmode

" make pretty
let g:airline_powerline_fonts = 1
" let g:airline_theme = 'base16'

"extensions
let g:airline_extensions = ['tabline',
            \ 'syntastic', 'branch', 'ctrlp', 'hunks',
            \ 'whitespace', 'tagbar']

let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#enabled = 1
