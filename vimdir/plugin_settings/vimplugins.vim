"Set NeoBundle start
set nocompatible
filetype off
"Detect if windows or unix {{{
if has('win32') || has('win64')
    set rtp+=~/vim/vimdir/bundle/neobundle.vim
    call neobundle#begin(expand('$USERPROFILE/vim/vimdir/bundle'))
else
    let rtp+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle'))
endif
"}}}
call neobundle#begin()
"NeoBundles to install

NeoBundleFetch 'Shougo/neobundle.vim'

"Basic plugins {{{
" NeoBundle 'dhruvasagar/vim-dotoo'
" NeoBundle 'dhruvasagar/vim-prosession', {'depends': 'tpope/vim-obsession'}
" NeoBundle 'jeffkreeftmeijer/vim-numbertoggle'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'andrewRadev/splitjoin.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'chrisbra/vim-diff-enhanced'
NeoBundle 'godlygeek/tabular'
NeoBundle 'honza/vim-snippets', {'depends': 'sirver/ultisnips'}
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Konfekt/FastFold'
NeoBundle 'lokaltog/vim-easymotion'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'nono/jquery.vim'
NeoBundle 'roman/golden-ratio'
NeoBundle 'ryanoasis/vim-devicons', {'depends': ['bling/vim-airline', 'kien/ctrlp.vim'] }
NeoBundle 'scrooloose/syntastic'
NeoBundle 'sirver/ultisnips'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'stormherz/tablify'
NeoBundle 't9md/vim-choosewin'
NeoBundle 'townk/vim-autoclose'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-flagship'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'vim-scripts/camelcasemotion'
NeoBundle 'xolox/vim-easytags', {'depends': 'xolox/vim-misc'}
NeoBundle 'xolox/vim-misc'
NeoBundle 'yankRing.vim'
" }}}

" Writing {{{
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'junegunn/limelight.vim'
NeoBundle 'vim-latex/vim-latex'
NeoBundle 'vim-pandoc/vim-pandoc'
NeoBundle 'vim-pandoc/vim-pandoc-syntax'
"}}}

"Web-Dev plugins {{{
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'elzr/vim-json'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'KabbAmine/gulp-vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'othree/html5.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'spf13/piv'
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
filetype plugin indent on
syntax on
NeoBundleCheck
"END
