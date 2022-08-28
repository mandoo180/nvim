local g = vim.g
local set = vim.api.nvim_set_keymap

g.rnvimr_ex_enable = 1
set('n', '<space><space>', ':RnvimrToggle<cr>', {noremap = true})
