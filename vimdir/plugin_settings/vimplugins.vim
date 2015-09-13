"Set NeoBundle start
set nocompatible
filetype off
"Detect if windows or unix {{{
if has('win32') || has('win64')
    set rtp+=$USERPROFILE/vimfiles/bundle/neobundle.vim
    call neobundle#begin(expand('$USERPROFILE/vimfiles/bundle'))
else
    let rtp+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle'))
endif
"}}}
call neobundle#begin()
"NeoBundles to install

NeoBundleFetch 'Shougo/neobundle.vim'

"Basic plugins {{{
" NeoBundle 'andrewRadev/splitjoin.vim'
" NeoBundle 'dhruvasagar/vim-dotoo'
" NeoBundle 'dhruvasagar/vim-prosession', {'depends': 'tpope/vim-obsession'}
" NeoBundle 'jeffkreeftmeijer/vim-numbertoggle'
NeoBundle 'bling/vim-airline'
NeoBundle 'chrisbra/vim-diff-enhanced'
NeoBundle 'godlygeek/tabular'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Konfekt/FastFold'
NeoBundle 'lokaltog/vim-easymotion'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'nono/jquery.vim'
NeoBundle 'ryanoasis/vim-devicons', {'depends': ['scrooloose/nerdtree', 'bling/vim-airline', 'kien/ctrlp.vim'] }
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
NeoBundle 'xolox/vim-easytags', {'depends': 'xolox/vim-misc'}
NeoBundle 'xolox/vim-misc'
NeoBundle 'Xuyuanp/nerdtree-git-plugin', {'depends': 'scrooloose/nerdtree'}
NeoBundle 'yankRing.vim'
" }}}

" Writing {{{
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'junegunn/limelight.vim'
NeoBundle 'vim-pandoc/vim-pandoc'
NeoBundle 'vim-pandoc/vim-pandoc-syntax'
"}}}

"Web-Dev plugins {{{
NeoBundle 'elzr/vim-json'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'othree/html5.vim'
NeoBundle 'pangloss/vim-javascript'
"}}}

" Ruby plugins {{{
NeoBundle 'thoughtbot/vim-rspec', {
    \'lazy': 1,
    \ 'autoload': {
    \   'filetypes': ['ruby', 'rails']
    \   }
    \}
NeoBundle 'tpope/vim-cucumber', {
    \'lazy': 1,
    \ 'autoload': {
    \   'filetypes': ['ruby', 'rails']
    \   }
    \}
NeoBundle 'tpope/vim-rails', {
    \'lazy': 1,
    \ 'autoload': {
    \   'filetypes': ['ruby', 'rails']
    \   }
    \}
NeoBundle 'vim-ruby/vim-ruby', {
    \'lazy': 1,
    \ 'autoload': {
    \   'filetypes': ['ruby', 'rails']
    \   }
    \}
"}}}

" Other plugins {{{
NeoBundle 'hallison/vim-markdown'
" }}}

"Colorschemes {{{ ...bloody yanks its colourschemes
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'romainl/apprentice'
"}}}

call neobundle#end()
set nocompatible
filetype plugin on
syntax on
NeoBundleCheck
"END
