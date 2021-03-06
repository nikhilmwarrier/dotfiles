" ------ KEYMAPS ------

" quick quit
nnoremap <leader>q :q<CR>

" quick save
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i
vnoremap <C-s> :w<CR>

" insert empty lines
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" toggle wrap
nnoremap <A-w> :set wrap!<CR>
nnoremap <leader>w :set wrap!<CR>

" switch tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" open current split in a tab
nnoremap <leader>t <C-w>T

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
" :inoremap ii <Esc>

" NERDTree
nnoremap <leader>b :NERDTreeToggle<CR>

" FZF
nnoremap E :Files<CR>

" Goyo
nnoremap <leader>r :Goyo<CR>
