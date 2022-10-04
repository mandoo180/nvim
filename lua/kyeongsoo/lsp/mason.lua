local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

local status_config_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_config_ok then
  return
end

mason.setup()
mason_lspconfig.setup {
  ensure_installed = {
    "cssls",
    "cssmodules_ls",
    "emmet_ls",
    "html",
    "jdtls",
    "jsonls",
    "sumneko_lua",
    "tsserver",
    -- "pyright",
    "jedi_language_server",
    "yamlls",
    "bashls",
    "clangd",
    "rust_analyzer",
  },
  automatic_installation = true,
}
