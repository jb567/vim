"Set Plug start
set nocompatible
filetype off
call plug#begin(expand('~/USERPROFILE/vim/vimdir/bundle'))

"Basic plugins {{{
" Plug 'dhruvasagar/vim-dotoo'
" Plug 'dhruvasagar/vim-prosession', {'depends': 'tpope/vim-obsession'}
" Plug 'jeffkreeftmeijer/vim-numbertoggle'
" Plug 'yankRing.vim'
Plug 'airblade/vim-gitgutter'
Plug 'andrewRadev/splitjoin.vim'
Plug 'ctrlpvim/ctrlp.vim' | Plug 'bling/vim-airline' | Plug 'ryanoasis/vim-devicons'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'godlygeek/tabular'
Plug 'Konfekt/FastFold'
Plug 'lokaltog/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'nono/jquery.vim'
Plug 'roman/golden-ratio'
Plug 'scrooloose/syntastic'
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
Plug 'sjl/gundo.vim'
Plug 'stormherz/tablify'
Plug 't9md/vim-choosewin'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-flagship'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/camelcasemotion'
Plug 'vimwiki/vimwiki'
Plug 'wakatime/vim-wakatime'
Plug 'xolox/vim-misc' | Plug 'xolox/vim-shell' | Plug 'xolox/vim-easytags'

" }}}

" Writing {{{
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'vim-latex/vim-latex', {'for': 'latex'}
Plug 'vim-pandoc/vim-pandoc', {'for': ['latex', 'pandoc', 'markdown']}
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': ['latex', 'pandoc', 'markdown']}
" }}}

"Web-Dev plugins {{{
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'hail2u/vim-css3-syntax', {'for': ['javascript', 'scss']}
Plug 'KabbAmine/gulp-vim'
Plug 'mattn/emmet-vim', {'for': 'html'}
Plug 'mxw/vim-jsx', {'for': 'jsx'}
Plug 'othree/html5.vim', {'for': ['html', 'php', 'phtml']}
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'jsx', 'html'] }
Plug 'spf13/piv', { 'for': ['php', 'include'] }
Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}
"}}}

" Ruby plugins {{{
Plug 'thoughtbot/vim-rspec', { 'for': ['ruby', 'rails'] }
Plug 'tpope/vim-cucumber', { 'for': ['ruby', 'rails'] }
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'rails'] }
"}}}

" Other plugins {{{
Plug 'hallison/vim-markdown'
Plug 'freitass/todo.txt-vim'
" }}}

"Colorschemes {{{ ...bloody yanks its colourschemes
Plug 'chriskempson/base16-vim'
Plug 'romainl/apprentice'
"}}}

call plug#end()
set nocompatible
filetype plugin indent on
syntax on
"END
