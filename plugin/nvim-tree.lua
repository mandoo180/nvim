local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end
local keymap = vim.keymap
local nvim_tree_config = require('nvim-tree.config')
local tree_cb = nvim_tree_config.nvim_tree_callback

-- OR setup with some options
nvim_tree.setup({
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        {key = {'l', '<CR>', 'o'}, cb = tree_cb 'edit'},
        {key = 'h', cb = tree_cb 'close_node'},
        {key = 'v', cb = tree_cb 'vsplit'},
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>')
