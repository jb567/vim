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

set guifont=DejaVu_Sans_Mono_for_Powerline:h10
colorscheme apprentice

syntax on
set nowrap
set nobackup
set noswapfile
set listchars=eol:↲,tab:▶▹,nbsp:␣,extends:…,trail:•
set matchpairs+=<:>
set textwidth=80
set hlsearch incsearch

"Wildmenu and ignores {{
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX crap
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
"}}

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
nnoremap <F5> :GundoToggle<CR>
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
