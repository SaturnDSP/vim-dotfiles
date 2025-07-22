if filereadable(expand("$HOME/.vim/configs/plug.vim"))
    source $HOME/.vim/configs/plug.vim
else
    echo "run download-vim-plug.sh inside scripts folder to install and download vim plug"
endif

call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-commentary'
    Plug 'junegunn/vim-easy-align'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()

