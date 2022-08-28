local set = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

set('i', 'kj', '<esc>', opt)
set('i', 'jk', '<esc>', opt)

set('n', '<tab>', ':bnext<cr>', opt)
set('n', '<s-tab>', ':bprev<cr>', opt)
set('n', '<c-s>', ':w<cr>', opt)
set('i', '<c-s>', '<esc>:w<cr>', opt)
set('n', '<c-w>', ':bd<cr>', opt)
set('i', '<c-s>', '<esc>:bd<cr>', opt)

set('v', '>', '>gv', opt)
set('v', '<', '<gv', opt)

set('n', '<c-h>', '<c-w>h', opt)
set('n', '<c-j>', '<c-w>j', opt)
set('n', '<c-k>', '<c-w>k', opt)
set('n', '<c-l>', '<c-w>l', opt)

set('n', '+', '<C-a>', opt)
set('n', '-', '<C-x>', opt)

set('n', '<C-a>', 'gg<S-v>G', opt)
