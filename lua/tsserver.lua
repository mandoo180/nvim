require'lspconfig'.tsserver.setup {
  root_dir = function() return vim.loop.cwd() end
}

