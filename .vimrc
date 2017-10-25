
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype plugin indent on

" Enable syntax highlighting.
syntax on

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
"set hidden

" Better command-line completion.
set wildmenu

" Show partial commands in the last line of the screen.
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below).
set hlsearch

" Use case insensitive search, except when using capital letters.
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action.
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window.
set ruler

" Always display the status line, even if only one window is displayed.
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong.
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes.
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue".
"set cmdheight=2

" Display line numbers on the left.
set number

" Quickly time out on keycodes, but never time out on mappings.
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'.
set pastetoggle=<F11>

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
" See: http://stackoverflow.com/questions/426963/replace-tab-with-spaces-in-vim
set shiftwidth=2 softtabstop=2 expandtab

" '100: Remember marks for the last 100 edited files.
" <1000: Limit the number of lines saved for each register to 1000 lines.
" s100: Skip registers with more than 100KB of text.
" h: Disable search highlighting when Vim starts.
set viminfo='100,<1000,s100,h

" Enable code completion.
set omnifunc=syntaxcomplete#Complete

" Set background to dark. This forces better readable colors for the terminal.
set background=dark

" Change color of line numbers to grey.
highlight LineNr ctermfg=grey

" Disable bold font style for comments.
highlight Comment cterm=NONE

" Re-yank any text that is pasted in visual mode.
" See: http://stackoverflow.com/questions/290465/vim-how-to-paste-over-without-overwriting-register
xnoremap <expr> p 'pgv"'.v:register.'y'

" Temporarily disable search highlighting (see 'set hlsearch') by pressing
" backslash. Highlighting is re-enabled by performing another search or using
" 'n' or something similar.
nnoremap <silent> \ :noh<CR>

" Map indent/unindent to tab/shift+tab.
vmap <TAB> >gv
vmap <S-TAB> <gv

" Display a ruler by coloring column 81 red.
set colorcolumn=81

