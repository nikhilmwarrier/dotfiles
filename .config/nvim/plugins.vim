
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
    Plug 'windwp/nvim-autopairs'        " brackets pairing
    Plug 'ryanoasis/vim-devicons'       " snazzy icons
    Plug 'mhinz/vim-startify'           " startup screen
call plug#end()
" ------ /Plugins ------
