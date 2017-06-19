set nrformats -=octal "removes silly octal 
                      "<C-A> options so 
                      "increments with leading 0
set magic
set nobackup   " remove the silly swapfile stuff
set noswapfile " remove the silly swapfile stuff

"WILD MENU {{{
set wildmenu                                     | " enable wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn                    | " Version control
set wildignore+=*.aux,*.out,*.toc                | " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   | " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest | " compiled object files
set wildignore+=*.spl                            | " compiled spelling word lists
set wildignore+=*.sw?                            | " Vim swap files
set wildignore+=*.DS_Store                       | " OSX crap
set wildignore+=*.luac                           | " Lua byte code
set wildignore+=migrations                       | " Django migrations
set wildignore+=*.pyc                            | " Python byte code
set wildignore+=*.orig                           | " Merge resolution files
"}}}

"SEARCH MENU {{{
set incsearch                   " Incremental searching
set hlsearch                    " Highlight search results
set ignorecase smartcase        " Case insensitive searching when the string
"}}}
