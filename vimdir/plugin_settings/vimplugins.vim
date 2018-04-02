"Set Plug start
set nocompatible
filetype off
"call plug#begin(expand('~/vim/vimdir/bundle')) "OLD
if(has('nvim'))
    call plug#begin()
else
    call plug#begin('$VIMPLUGINDIR/../bundle') "Test
endif

"Basic plugins {{{
" Plug 'dhruvasagar/vim-dotoo'
" Plug 'jeffkreeftmeijer/vim-numbertoggle'
" Plug 'tpope/vim-flagship'
" Plug 'yankRing.vim'
" Plug 'townk/vim-autoclose'         | " automatically closes stuff
" Plug 'tpope/vim-ragtag'            | " XML-like editing
" Plug 'tpope/vim-sleuth'            | " context sensitive indentation
Plug 'airblade/vim-gitgutter'        | " add git to the left hand side
Plug 'andrewradev/splitjoin.vim'     | " add quick expansion to single line code
Plug 'chrisbra/vim-diff-enhanced'    | " improves vim's default diff algorithm to spot multiline moves
Plug 'konfekt/fastfold'              | " changes the auto folding algorithm to only check when you want to use folds
Plug 'majutsushi/tagbar'             | " Adds a bar on the right hand side for CTAG navigation
Plug 'mbbill/undotree'               | " Adds a graphical undo tree interface -- not really used much
Plug 'roman/golden-ratio'            | " Auto window focus sizing
Plug 'sheerun/vim-polyglot'          | " Alot of syntax highlighting
Plug 'stormherz/tablify'             | " macro creation of ascii tables
Plug 'tommcdo/vim-lion'              | " text alignment
Plug 'tpope/vim-abolish'             | " textual character replacement
Plug 'tpope/vim-commentary'          | " quick commenting 
Plug 'tpope/vim-fugitive'            | " decent git integration
Plug 'tpope/vim-repeat'              | " support for . repeats for other plugins
Plug 'tpope/vim-sensible'            | " default options
Plug 'tpope/vim-speeddating'         | " increment times
Plug 'tpope/vim-surround'            | " allows vim to surround an area with things
Plug 'tpope/vim-unimpaired'          | " buffer/arg list navigation
Plug 'ludovicchabant/vim-gutentags'  | " automatic CTAG generation
Plug 'tpope/vim-vinegar'             | " minimal netrw skin
Plug 'bkad/camelcasemotion'          | " Camel case word wise movement
Plug 'vimwiki/vimwiki'               | " vim wiki
Plug 'w0rp/ale'                      | " asynchronous linting
Plug 'wellle/targets.vim'            | " more text objects
Plug 'xolox/vim-misc'                | Plug 'xolox/vim-easytags'          | " CTag auto generation
" }}}

" Writing {{{
Plug 'lervag/vimtex', {'for': 'latex'}
Plug 'vim-pandoc/vim-pandoc', {'for': ['latex', 'pandoc', 'markdown']}
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': ['latex', 'pandoc', 'markdown']}
" }}}

"Colorschemes {{{ ...bloody yanks its colourschemes
Plug 'chriskempson/base16-vim'
Plug 'romainl/apprentice'
"}}}

" NeoVim stuff {{{
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" }}}

call plug#end()
set nocompatible
filetype plugin indent on
syntax on
