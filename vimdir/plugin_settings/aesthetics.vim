if has('win32') || has('win64')
    set guifont=DejaVu_Sans_Mono_for_Powerline_:h11:cANSI
else
    set guifont=DejaVu_Sans_Mono_for_Powerline_ 10
endif
colorscheme apprentice
syntax on
set nowrap
set nobackup
set noswapfile
set listchars=eol:↲,tab:▶▹,nbsp:␣,extends:…,trail:•
set matchpairs+=<:>
set textwidth=80
set hlsearch incsearch
set ff=unix

" tabstuffs {{{
set tabstop=2
set smartindent
set softtabstop=2
set shiftwidth=2
set expandtab
" }}}
