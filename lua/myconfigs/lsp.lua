local lspconf = require('lspconfig')
local servers = { 'gopls', 'pyright', 'lua_ls' }

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true }
  local set_keymap = vim.api.nvim_buf_set_keymap
  set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
  set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
  set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
  set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
  set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
  set_keymap(bufnr, "n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
  set_keymap(bufnr, "n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
  set_keymap(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
  set_keymap(bufnr, "n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
  set_keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
  set_keymap(bufnr, "n", "lq", "<cmd>lua vim.diagnostic.setloclist()<cr>", opts)
  set_keymap(bufnr, "n", "<leader>nd", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
  set_keymap(bufnr, "n", "<leader>np", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
end


for _, srv in ipairs(servers) do
  lspconf[srv].setup {
    on_attach = on_attach
  }
end
