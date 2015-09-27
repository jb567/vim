"link to plugins filters for OS first {{{
if has('win32') || has('win64')
    let $VIMPLUGINDIR = expand('$USERPROFILE\vim\vimdir\plugin_settings')
    let $MYVIMRC='C:\Users\Jacob\vim\vimrc'
else
    let $VIMPLUGINDIR = expand( '~/.vim/plugin_settings/' )
    let $MYVIMRC=expand('%')
endif
"}}}
let $MYPLUGINS = expand('$VIMPLUGINDIR/vimplugins.vim')
source $MYPLUGINS


"Activate any annoying plugins that don't like pathogen
let g:ragtag_global_maps = 1
let g:neocomplcache_enable_at_startup = 1

" Where is the sauce {{{
if has('autocmd')
  source $VIMPLUGINDIR/autocmd.vim
endif
source $VIMPLUGINDIR/aesthetics.vim
source $VIMPLUGINDIR/airline.vim
source $VIMPLUGINDIR/folding.vim
source $VIMPLUGINDIR/functions.vim
source $VIMPLUGINDIR/keybinds.vim
source $VIMPLUGINDIR/pandoc.vim
source $VIMPLUGINDIR/syntastic.vim
source $VIMPLUGINDIR/ultisnips.vim
source $VIMPLUGINDIR/wildmenu.vim
" }}}

cd $USERPROFILE
let @/ = "" "Prevent work from spilling over
