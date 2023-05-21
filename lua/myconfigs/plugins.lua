require("packer").init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return require("packer").startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'

  -- use {
  --   'VonHeikemen/lsp-zero.nvim',
  --   branch = 'v2.x',
  --   requires = {
  --     -- LSP Support
  --     { 'neovim/nvim-lspconfig' }, -- Required
  --     {
  --       -- Optional
  --       'williamboman/mason.nvim',
  --       run = function()
  --         pcall(vim.cmd, 'MasonUpdate')
  --       end,
  --     },
  --     { 'williamboman/mason-lspconfig.nvim' }, -- Optional
  --
  --     -- Autocompletion
  --     { 'hrsh7th/nvim-cmp' },     -- Required
  --     { 'hrsh7th/cmp-nvim-lsp' }, -- Required
  --     { 'L3MON4D3/LuaSnip' },     -- Required
  --   }
  -- }
  -- lsp
  use 'neovim/nvim-lspconfig'

  -- completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- syntax highlighting
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- autopairs
  use 'windwp/nvim-autopairs'

  -- commenting
  use 'numToStr/Comment.nvim'

  -- file explorer
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
  use { 'akinsho/toggleterm.nvim', tag = "*" }
  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
end)
