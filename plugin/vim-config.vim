" Personal Vim/Neovim Config Plugin
" This file is automatically sourced when Vim/Neovim starts
"
if filereadable(expand(g:vim_home_path . "/plugged/vim-config/plugins.vim"))
  execute "source " . g:vim_home_path . "/plugged/vim-config/plugins.vim"
else
  echoerr "Error: plugins.vim not found in vim-config"
endif

if has("nvim")
  lua require('vim-config')
endif

scriptencoding utf-8
set encoding=utf-8
