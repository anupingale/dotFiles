set nu
set ruler
set incsearch
syntax on
filetype plugin indent on
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
colorscheme Monokai
set foldmethod=indent "folding
set foldnestmax=10   "fold anything with a max nest level of 10
set nofoldenable     "Don't fold by default when opening a file
set foldlevel=2      "Set at least 2 levels of fold
set backspace=indent,eol,start  "enable delete button as backspace in updated vim
set laststatus=2
set statusline+=%F
set updatetime=200

map <C-y> "*y
imap cl<tab> console.log();<left><left>
imap b<tab> :bnext
