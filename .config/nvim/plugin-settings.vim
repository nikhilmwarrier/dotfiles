" ------ Plugins/nvim-colorizer ------
lua require('nvim-autopairs').setup{}

" ------ Plugins/nvim-colorizer ------
lua require'colorizer'.setup()

" ------ Plugins/dashboard------
let g:dashboard_default_executive ='fzf'


let g:dashboard_custom_header =[
            \'⠀⠀⠀⣶⣶⣶⣶⡆⠀⠀⠀⠀⠀⠀ ',
            \'⠀⠀⠀⠛⠛⢻⣿⣿⡀⠀⠀⠀⠀⠀⠀',
            \'⠀⠀⠀⠀⠀⢀⣿⣿⣷⠀⠀⠀⠀⠀⠀',
            \'⠀⠀⠀⠀⢀⣾⣿⣿⣿⣇⠀⠀⠀⠀⠀',
            \'⠀⠀⠀⢠⣿⣿⡟⢹⣿⣿⡆⠀⠀⠀⠀',
            \'⠀⠀⣰⣿⣿⠏⠀⠀⢻⣿⣿⡄⠀⠀⠀',
            \'⠀⣴⣿⡿⠃⠀⠀⠀⠈⢿⣿⣷⣤⣤⡆',
            \'⠾⠿⠿⠁⠀⠀⠀⠀⠀⠘⣿⣿⡿⠿⠛',
    \]


let g:dashboard_custom_footer =[
        \'"violence starts with vi"'
    \]

" ------ Plugins/Lightline
let g:lightline = {
      \ 'colorscheme': colorscheme,
      \ 'tab_component_function': {
        \   'tabnum': 'LightlineWebDevIcons',
      \ },
      \ }
" show icons in tabbar
function! LightlineWebDevIcons(n)
  let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
  return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
endfunction

set noshowmode    " hide the mode indicator in nvim's default statusbar

" ------ Plugins/NERDTree ------

let NERDTreeShowHidden=1

" ------ Plugins/NERDCommenter ------

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
