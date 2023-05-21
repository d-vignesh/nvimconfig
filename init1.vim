" options
set background=dark
set number
set title

" tab size
set expandtab
set shiftwidth=2
set tabstop=2

colorscheme tokyonight

filetype plugin indent on
syntax on

set termguicolors

call plug#begin()
  Plug 'ryanoasis/vim-devicons'
  Plug 'preservim/nerdtree'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()
