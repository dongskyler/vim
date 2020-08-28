" .vimrc
" Skyler Dong (dongskyler@gmail.com) <skylerdong.com>
" Homepage: <https://github.com/dongskyler/vim>

"------------------------------------------------------------
" Basic settings

set nocompatible

filetype indent plugin on

syntax on

set encoding=utf-8 nobomb
set spelllang=en_us

" Temporary files
set directory=$HOME/.vim/tmp/swap
set backup
set backupdir=$HOME/.vim/tmp/backup
set undofile
set undodir=$HOME/.vim/tmp/undo

" History and undo
set history=500
set undolevels=500

" Buffer
set ttyfast
set updatetime=330
set lazyredraw
set redrawtime=10000
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" File handling
set autoread

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Better command-line completion
set wildmenu

" Search and regex
set gdefault
set magic
set hlsearch
set incsearch
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Keys

let mapleader=";"
" let maplocalleader="'"

set backspace=indent,eol,start
set nostartofline
set esckeys

set timeout
set timeoutlen=5000
set ttimeout
set ttimeoutlen=5000

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Mouse
set mouse=a

"------------------------------------------------------------
" Mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

"------------------------------------------------------------
" UI

colorscheme elflord

set ruler
set cursorline
" Always display the status line, even if only one window is displayed
set laststatus=2
set number
set numberwidth=4
set relativenumber

" Show all changes
set report=0

" Show partial commands in the last line of the screen
set showcmd
set showmode
set showmatch
set title
set splitbelow
set splitright
set scrolloff=7
set sidescrolloff=7
set sidescroll=1

set visualbell
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

"------------------------------------------------------------
" Indentation options

set expandtab
set autoindent
set smartindent
set copyindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set smarttab

set wrap
set textwidth=79
" set formatoptions=qrn1
" set formatoptions-=o
set pastetoggle=<leader>p

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
set nomodeline

"------------------------------------------------------------
" Plugins

" -- GitGutter --
" let g:gitgutter_grep=''
set signcolumn=yes

" -- NERDTree --
let NERDTreeIgnore=['.DS_Store']
let NERDTreeShowBookmarks=0 "show bookmarks on startup
let NERDTreeHighlightCursorline=1 "Highlight the selected entry in the tree
let NERDTreeShowLineNumbers=0
let NERDTreeMinimalUI=1
noremap <leader>nt :NERDTreeToggle<CR>

" -- NERDCommenter --
let NERDSpaceDelims=1 " space around delimiters
let NERDRemoveExtraSpaces=1
let g:NERDCustomDelimiters = {
    \ 'scss': { 'left': '//' }
\ }

" -- Syntastic : Linting / Error check --
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_open=1
" close/open location list (errors)
noremap <silent><leader>lc :lcl<CR>
noremap <silent><leader>lo :Errors<CR> :lw<CR>
noremap <silent><leader>ln :lnext<CR>
noremap <silent><leader>lp :lprev<CR>
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exec = 'eslintme'
" let g:syntastic_javascript_eslint_generic = 1

