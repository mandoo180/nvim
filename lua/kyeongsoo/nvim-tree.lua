local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup {
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "l", action = "edit" },
        { key = "h", action = "close_node" },
      },
    },
  },
  remove_keymaps = { "<Tab>" },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  open_on_setup = true,
  disable_netrw = true,
}

