let mapleader="," "set comma to be the leader
let g:mapleader="," "for safety

"insert mode
"===========
"make shit easier to escape
inoremap <ESC> <NOP>
inoremap jk <ESC>

"normal mode
"===========
"remove the highlighting after
nnoremap <silent> i :nohl<cr>i
"set current directory to file location
nnoremap <silent> <leader>cd :cd %:p:h<CR>

"make the n and N center the line
nmap <silent> n :norm! nzzzv<CR>
nmap <silent> N :norm! Nzzzv<CR>

" make a new Ex-mode opener
nnoremap <space> :
vnoremap <space> :
"remove Ex mode
"nnoremap Q <nop>

"ctrlP toggle
nnoremap <leader>s :CtrlP<CR>

"YankRing
nmap <leader><leader> :Reg<CR>
noremap <expr> j v:count > 1 ? 'm`' . v:count . 'j' : 'gj'
noremap <expr> k v:count > 1 ? 'm`' . v:count . 'k' : 'gk'

"Go to last copy
nmap gV `[v`]

"Window Toggles
noremap <C-H> <C-W>h
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l

"Ex mode
" cmap w!! w %!sudo tee > /dev/null %
cnoremap <silent> jk <C-c>

"Visual block moving
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
"remap so it does macros over every line
vnoremap @ :norm@

"highlight
nmap <leader><space> :nohl<CR>

"misc
map Y y$

" map the system clipboard to leader  {{{
nnoremap <leader>y "+y
vnoremap <leader>y "+y

nnoremap <leader>Y "+Y
vnoremap <leader>Y "+Y

nnoremap <leader>p "+p
vnoremap <leader>p "+p

nnoremap <leader>P "+P
vnoremap <leader>P "+P
" }}}
" Plugins {{{
nnoremap <F5> :GundoToggle<CR>
nnoremap gt :TagbarToggle<CR>
nmap \\ <Plug>(choosewin)
" camelcase
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e
" }}}
