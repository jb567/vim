"link to plugins filters for OS first

if has('win32') || has('win64')
    let $VIMDIR = expand('$USERPROFILE\vimfiles\')
else
    let $VIMDIR = expand( '~/.vim/' )
endif

source $VIMDIR/vimplugins.vim
"Tab controls

set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"Aesthetic colourscheme
set background=dark
set guifont=Meslo\ LG\ S:h10
colorscheme base16-ocean

syntax on
set nowrap
set nobackup
set noswapfile
set listchars=eol:↲,tab:▶▹,nbsp:␣,extends:…,trail:•
set matchpairs+=<:>
set textwidth=80
" set colorcolumn=80
set hlsearch incsearch

"Wildmenu and ignores
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

"AUTO COMMANDS
if has('autocmd')
    autocmd InsertEnter * :setlocal nohlsearch
    autocmd InsertLeave * :setlocal hlsearch
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

"CUSTOM MAPPINGS

let mapleader="," "set comma to be the leader
let g:mapleader="," "for safety

"insert mode
inoremap <ESC> <NOP>
inoremap jj <ESC>

"normal mode
nnoremap <leader>r :%s/
nnoremap <leader>d :cd %:p:h<CR>

" inverse the selection
nnoremap <space> :
vnoremap <space> :
nmap <leader>s :CtrlP<CR>
nmap <leader><leader> :Reg<CR>
"
nnoremap of :NERDTreeToggle<CR>
nmap j gj
nmap k gk
nmap [b :bNext<CR>
nmap ]b :bnext<CR>
map <Leader>cd :cd %:p:h<CR>
nmap gV `[v`]
"Window Toggles
noremap <C-H> <C-W>h
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l

"Ex mode
cmap w!! w %!sudo tee > /dev/null % 

cabbrev ew :wq
cabbrev qw :wq

"Visual block moving
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"highlight
nnoremap n nzz
nnoremap N Nzz
nmap <leader><space> :nohl<CR>


"Word navigation
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

"misc
map Y y$

"focus shifters
au FocusLost * :silent! wall
au VimResized * :wincmd =


"Cursor line stuff
"
"     au Leave,InsertEnter * set nocursorline
"     au WinEnter,InsertLeave * set cursorline
" augroup END

"Weird others
au BufRead,BufNewFile *.md set filetype=markdown

"Activate any annoying plugins that don't like pathogen
let g:ragtag_global_maps = 1
nnoremap <F5> :GundoToggle<CR>
let g:neocomplcache_enable_at_startup = 1
let g:tabular_loaded = 1

let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'


" "Abolish fo'shizzle
" Abolish teh the
" Abolish fucntion function

"airline
let g:airline_powerline_fonts = 0
set laststatus=2
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

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
