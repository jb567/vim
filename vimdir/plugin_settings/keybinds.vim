"CUSTOM MAPPINGS {{

let mapleader="," "set comma to be the leader
let g:mapleader="," "for safety

"insert mode
inoremap <ESC> <NOP>
inoremap jk <ESC>

"normal mode
nnoremap <leader>r :%s/
nnoremap <leader>d :cd %:p:h<CR>

" inverse the selection
nnoremap <space> :
vnoremap <space> :
nmap <leader>s :CtrlP<CR>
nmap <leader><leader> :Reg<CR>
"
nnoremap of :NERDTreeToggle<CR>
nmap j gj
nmap k gk
nmap [b :bNext<CR>
nmap ]b :bnext<CR>
map <Leader>cd :cd %:p:h<CR>
nmap gV `[v`]
"Window Toggles
noremap <C-H> <C-W>h
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l

"Ex mode
cmap w!! w %!sudo tee > /dev/null % 

cabbrev ew :wq
cabbrev qw :wq

"Visual block moving
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"highlight
nnoremap n nzz
nnoremap N Nzz
nmap <leader><space> :nohl<CR>


"Word navigation
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

"misc
map Y y$
"}}
