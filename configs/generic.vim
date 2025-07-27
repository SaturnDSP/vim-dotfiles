" Vim temp files and stuff
" TODO: enable the numbers in Ex mode!!

nnoremap <leader>r :source $MYVIMRC<CR>:echo "reloaed config files"<CR>

set backup
set backupdir=~/.vim/.backupdir/
set undofile
set undodir=$HOME/.vim/.undodir/
set noswapfile

syntax on
set nocompatible
set modelines=0
set number
set relativenumber
set encoding=utf-8
set wrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set copyindent
set expandtab
set noshiftround
set hlsearch
set incsearch
set showmatch
set smartcase
set hidden
set ttyfast
set laststatus=2
set wrap
set termguicolors
filetype plugin indent on
set ignorecase
set smartcase
set incsearch
set hlsearch
set hidden
set updatetime=100
set signcolumn=yes
set belloff=all
set clipboard=unnamed
set mouse=a
set nobackup
set nowritebackup
set ttimeoutlen=100
set wildmenu

colo sorbet
