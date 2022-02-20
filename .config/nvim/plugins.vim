
" ------ Plugins ------
call plug#begin()                   
    Plug 'tomasiser/vim-code-dark'      " Colorscheme
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'scrooloose/nerdtree'          " NERDTree as file manager
    Plug 'preservim/nerdcommenter'      " Comments shortcut
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/goyo.vim'            " zen mode-esque thing
    Plug 'norcalli/nvim-colorizer.lua'  " color highlighting
call plug#end()
" ------ /Plugins ------
