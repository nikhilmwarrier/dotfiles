" ------ Import all the other config files ------
let g:nvim_config_root = stdpath('config')
let g:config_file_list = ['plugins.vim', 'basic-settings.vim', 'keymaps.vim', 'plugin-settings.vim', 'misc.vim']

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . '/' . f
endfor
