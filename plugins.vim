if !exists('g:vim_home_path')
  echoerr "Error: g:vim_home_path is not set. Please define it before sourcing plugins.vim"
  finish
endif

" Initialize plugins in appropriate directory
call plug#begin(g:vim_home_path . "/plugged")

Plug 'tpope/vim-sensible'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

if has('nvim')
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'neovim/nvim-lspconfig'
  Plug 'numToStr/Comment.nvim'
endif

call plug#end()
