local set = vim.api.nvim_set_keymap
local lspconfig = require'lspconfig'

lspconfig.jedi_language_server.setup {}
lspconfig.tsserver.setup {
  root_dir = function() return vim.loop.cwd() end
}
lspconfig.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
lspconfig.bashls.setup {}


-- lsp configs
set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {noremap = true})
set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {noremap = true})
set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {noremap = true})
set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {noremap = true})
set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', {noremap = true})
-- set('n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', {noremap = true})
-- set('n', '<space>n', '<cmd>lua vim.lsp.buf.goto_next()<cr>', {noremap = true})
-- set('n', '<bs>n', '<cmd>lua vim.lsp.buf.goto_prev()<cr>', {noremap = true})
