" OS Detection {{{
if has('win32') || has('win64')
  set guifont=Sauce_Code_Powerline:h12:cANSI
else
  set guifont=Source_Code_Pro 10
endif
" }}}

colorscheme base16-eighties
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
set shiftwidth=4
set smartindent
set softtabstop=4
set tabstop=4
" }}}
