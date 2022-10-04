local ok, telescope = pcall(require, 'telescope')
if not ok then
  return
end

local builtin = require('telescope.builtin')

telescope.setup {}

vim.keymap.set('n', '<Leader>f', builtin.find_files)
vim.keymap.set('n', '<Leader>g', builtin.live_grep)
vim.keymap.set('n', '<Leader>b', builtin.buffers)
vim.keymap.set('n', '<Leader>h', builtin.help_tags)
