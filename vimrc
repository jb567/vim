"link to plugins filters for OS first
if has('win32') || has('win64')
    let $VIMPLUGINDIR = expand('$USERPROFILE\vimfiles\plugin_settings')
else
    let $VIMPLUGINDIR = expand( '~/.vim/plugin_settings/' )
endif
let $MYPLUGINS = expand('$VIMPLUGINDIR\vimplugins.vim')
source $VIMPLUGINDIR/vimplugins.vim

"Tab controls
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"Aesthetic colourscheme
set background=dark
set encoding=utf-8
set nu

source $VIMPLUGINDIR/font.vim

source $VIMPLUGINDIR/wildmenu.vim

"AUTO COMMANDS
if has('autocmd')
    source $VIMPLUGINDIR/autocmd.vim
endif

function! Reg()
    reg
    echo "Register: "
    let char = nr2char(getchar())
    if char != "\<Esc>"
        execute "normal! \"".char."p"
    endif
    redraw
endfunction

command! -nargs=0 Reg call Reg()

source $VIMPLUGINDIR/keybinds.vim

"focus shifters
au FocusLost * :silent! wall
au VimResized * :wincmd =


"Cursor line stuff
"
"     au Leave,InsertEnter * set nocursorline
"     au WinEnter,InsertLeave * set cursorline
" augroup END


"Activate any annoying plugins that don't like pathogen
let g:ragtag_global_maps = 1
let g:neocomplcache_enable_at_startup = 1
let g:tabular_loaded = 1


" source $VIMPLUGINDIR\abolish_def.vim
"
source $VIMPLUGINDIR\NERDTree.vim
"airline
source $VIMPLUGINDIR\airline.vim
" Folding
set foldmethod=syntax

let g:tex_fold_enabled=1
let g:vimsyn_folding=1
let g:xml_syntax_folding=1
let g:php_folding=1
let g:perl_folding=1

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" checkers
let g:syntastic_php_checkers = ["php", "phpcs", "phpmd"]
let g:syntastic_jquery_checkers = ["jslint", "jshint"]
source $VIMPLUGINDIR/pandoc.vim
source $VIMPLUGINDIR/syntastic.vim
cd $USERPROFILE
