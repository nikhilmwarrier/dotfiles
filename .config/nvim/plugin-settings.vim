" ------ Plugins/nvim-colorizer ------
lua require'colorizer'.setup()

" ------ Plugins/Lightline
let g:lightline = {
      \ 'colorscheme': colorscheme,
      \ }

set noshowmode    " hide the mode indicator in nvim's default statusbar

" ------ Plugins/NERDTree ------

let NERDTreeShowHidden=1

" ------ Plugins/NERDCommenter ------

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
