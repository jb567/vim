" OS Detection {{{
if has('win32') || has('win64')
  set guifont=DejaVu_Sans_Mono_for_Powerline_:h11:cANSI
else
  set guifont=DejaVu_Sans_Mono_for_Powerline_ 10
endif
" }}}

colorscheme apprentice
set background=dark
set encoding=utf-8
set ff=unix
set hlsearch incsearch
set listchars=eol:↲,tab:▶▹,nbsp:␣,extends:…,trail:•
set matchpairs+=<:>
set nobackup
set noswapfile
set nowrap
set nu
set textwidth=80
syntax on
set hidden
set magic

" Window splits {{{
set splitright
set splitbelow
let g:choosewin_overlay_enable = 1
" }}}

" tabstuffs {{{
set expandtab
set shiftwidth=2
set smartindent
set softtabstop=2
set tabstop=2
" }}}
