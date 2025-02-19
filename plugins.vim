" Ensure g:vim_home_path is already defined, otherwise exit
if !exists('g:vim_home_path')
  echoerr "Error: g:vim_home_path is not set. Please define it before sourcing plugins.vim"
  finish
endif

" Initialize plugins in the correct directory
call plug#begin(g:vim_home_path . "/plugged")

" General Plugins
Plug 'tpope/vim-sensible'

" Neovim-specific plugins
if has('nvim')
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'neovim/nvim-lspconfig'
endif

call plug#end()
