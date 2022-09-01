local status_ok, lspconfig = pcall(require, 'lspconfig')
if not status_ok then
  return
end


return {
  cmd = { "pyright" },
  root_dir = lspconfig.util.find_git_ancestor,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        diagnosticMode = "workspace",
        inlayHints = {
          variableTypes = true,
          functionReturnTypes = true,
        },
      },
    },
  },
}
