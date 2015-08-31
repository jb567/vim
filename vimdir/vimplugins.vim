"Set NeoBundle start
set nocompatible
filetype off
"Detect if windows or unix
if has('win32') || has('win64')
    set rtp+=$USERPROFILE/vimfiles/bundle/neobundle.vim
    call neobundle#begin(expand('$USERPROFILE/vimfiles/bundle'))
else
    let rtp+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle'))
endif
call neobundle#begin()
"NeoBundles to install

NeoBundleFetch 'Shougo/neobundle.vim'

"Basic plugins {{
" NeoBundle 'dhruvasagar/vim-prosession', {'depends': 'tpope/vim-obsession'}
" NeoBundle 'mhinz/vim-startify'
NeoBundle 'andrewRadev/splitjoin.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'chrisbra/vim-diff-enhanced'
NeoBundle 'dhruvasagar/vim-dotoo'
NeoBundle 'godlygeek/tabular'
NeoBundle 'jeffkreeftmeijer/vim-numbertoggle'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Konfekt/FastFold'
NeoBundle 'lokaltog/vim-easymotion'
NeoBundle 'nono/jquery.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'stormherz/tablify'
NeoBundle 'townk/vim-autoclose'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-flagship'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'vim-scripts/camelcasemotion'
NeoBundle 'wincent/Command-T'
NeoBundle 'yankRing.vim'
" }}

"Writing {{
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'junegunn/limelight.vim'
" }}

"Web-Dev plugins {{
NeoBundle 'elzr/vim-json'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'othree/html5.vim'
" }}

"Ruby plugins {{
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'tpope/vim-rails'
NeoBundle 'vim-ruby/vim-ruby'
" }}

"Work-management plugins {{
NeoBundle 'vimwiki'
" }}

"Other plugins {{
NeoBundle 'hallison/vim-markdown'
" }}

"Colorschemes {{ ...bloody yanks its colourschemes
NeoBundle 'chriskempson/base16-vim'
"}}

call neobundle#end()
set nocompatible
filetype plugin on
syntax on
NeoBundleCheck
"END
