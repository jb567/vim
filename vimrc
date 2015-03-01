set nocompatible
set encoding=utf-8

"Pathogen Bundle calls
call pathogen#infect('bundle/{}','colorschemes/{}')
call pathogen#helptags()

"Tab controls
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"Aesthetic colourscheme
if has('gui_running')
    set background=light
    set guifont=Meslo\ LG\ S
else
    set background=dark
endif
colorscheme railscasts

syntax on
set number
set nowrap
set nobackup
set noswapfile
set listchars=tab:?\ ,eol:¬
set matchpairs+=<:>
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"Wildmenu
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bollocks
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files

"AUTO COMMANDS
if has('autocmd')
    autocmd bufwritepost .vimrc :source $MYVIMRC
endif

"Custom Mappings
let mapleader="," "set comma to be the leader
inoremap jj <ESC>
" nnoremap <leader>a :Ack 
nnoremap <leader>r :%s/

"focus shifters
au FocusLost * :silent! wall
au VimResized * :wincmd =

"Cursor line stuff
augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

"Activate any annoying plugins that don't like pathogen
let g:ragtag_global_maps = 1
nnoremap <F5> :GundoToggle<CR>
let g:neocomplcache_enable_at_startup = 1
let g:tabular_loaded=1
