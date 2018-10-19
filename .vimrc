" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup        " do not keep a backup file, use versions instead

" enable UTF-8 stuff
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set history=50    " keep 50 lines of command line history
set ruler            " show the cursor position all the time
set showcmd          " display incomplete commands
set incsearch        " do incremental searching
set wildmenu         " Add wildcards for completion while loading files
set modeline         " Set modeline so that you can see some info
set ls=2             " set two lines for info
set foldmethod=indent " folding
set foldnestmax=10   " fold anything with a max nest level of 10
set nofoldenable     " Don't fold by default when opening a file
set foldlevel=2      " Set at least 2 levels of fold open
set foldcolumn=2     " Sets a column to the left which provides information on folds


" NerdTREEToggle
map <F7> :NERDTreeToggle<CR>

" Copy to system clipboard
map <C-y> "*y

" To print console log automatically and return cursor to write in circular
" bracket
imap cl<tab> console.log();<left><left>

" Duplicate lines upwards and downloads
inoremap <C-S-Down> <Esc>yypi
inoremap <C-S-Up> <Esc>yyPi

set expandtab
map DS :%s/\s\+$// <CR>

set softtabstop=2
set tabstop=2
set shiftwidth=2
set wrap!
set number      " show line number
set nohlsearch  " dont highlight search

set updatetime=100 " update time. git gutter

" Mapping for Copy/Paste
" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a


  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78



" SnipMate setting
let g:snipMate = {}
let g:snipMate.snippet_version = 1
let g:snipMate.description_in_completion = 1


call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()
