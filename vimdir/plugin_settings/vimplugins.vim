"Set Plug start
set nocompatible
filetype off
"call plug#begin(expand('~/vim/vimdir/bundle')) "OLD
call plug#begin(expand('$VIMPLUGINDIR/../bundle')) "Test

"Basic plugins {{{
" Plug 'dhruvasagar/vim-dotoo'
" Plug 'jeffkreeftmeijer/vim-numbertoggle'
" Plug 'tpope/vim-flagship'
" Plug 'yankRing.vim'
Plug 'airblade/vim-gitgutter'
Plug 'andrewRadev/splitjoin.vim'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'ctrlpvim/ctrlp.vim' | Plug 'scrooloose/syntastic'|  Plug 'bling/vim-airline' "| Plug 'ryanoasis/vim-devicons'
Plug 'godlygeek/tabular'
Plug 'Konfekt/FastFold'
Plug 'lokaltog/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'roman/golden-ratio'
Plug 'sheerun/vim-polyglot'
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
Plug 'stormherz/tablify'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/camelcasemotion'
Plug 'vimwiki/vimwiki'
Plug 'wellle/targets.vim'
Plug 'xolox/vim-misc' | Plug 'xolox/vim-shell' | Plug 'xolox/vim-easytags'
" }}}

" Writing {{{
Plug 'lervag/vimtex', {'for': 'latex'}
Plug 'vim-pandoc/vim-pandoc', {'for': ['latex', 'pandoc', 'markdown']}
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': ['latex', 'pandoc', 'markdown']}
" }}}

" Other plugins {{{
Plug 'hallison/vim-markdown', {'for': ['markdown', 'pandoc']}
" }}}

"Colorschemes {{{ ...bloody yanks its colourschemes
Plug 'chriskempson/base16-vim'
Plug 'romainl/apprentice'
"}}}

call plug#end()
set nocompatible
filetype plugin indent on
syntax on
