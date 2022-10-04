local set = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

set('', '\\', '<Nop>', opts)
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'

set('i', 'kj', '<esc>', opts)
set('i', 'jk', '<esc>', opts)
set('i', 'jj', '<esc>', opts)
set('i', 'kk', '<esc>', opts)

set('n', '<Tab>', ':bnext<CR>', opts)
set('n', '<S-Tab>', ':bprev<CR>', opts)
set('n', '<C-s>', ':w<CR>:bnext<CR>', opts)
set('i', '<C-s>', '<ESC>:w<CR>:bnext<CR>', opts)
-- set('n', '<C-w>', ':bd<CR>', opt)
set('i', '<C-s>', '<ESC>:bd<CR>', opts)

set('n', '<A-j>', '<Esc>:m .+1<CR>==gi', opts)
set('n', '<A-k>', '<Esc>:m .-2<CR>==gi', opts)
set('v', 'p', '"_dP', opts)

set('v', '>', '>gv', opts)
set('v', '<', '<gv', opts)

set('n', '<C-h>', '<C-w>h', opts)
set('n', '<C-j>', '<C-w>j', opts)
set('n', '<C-k>', '<C-w>k', opts)
set('n', '<C-l>', '<C-w>l', opts)

set('n', '+', '<C-a>', opts)
set('n', '-', '<C-x>', opts)

set('n', '<C-a>', 'gg<S-v>G', opts)

set('n', '<Leader>w', '<CMD>w<CR>', opts)
set('n', '<Leader>q', '<CMD>q<CR>', opts)
set('n', '<Leader>c', '<CMD>bd<CR>', opts)
set('n', '<Leader>h', '<CMD>nohlsearch<CR>', opts)

-- plugins mappings
set('n', '<Leader>e', '<CMD>NvimTreeToggle<CR>', opts)
--[[ set('n', '<Leader>f', "<CMD>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts) ]]
--[[ set('n', '<Leader>g', "<CMD>Telescope live_grep theme=ivy<CR>", opts) ]]
--[[ set('n', '<Leader>h', "<CMD>Telescope help_tags<CR>", opts) ]]
--[[ set('n', '<Leader>m', "<CMD>Telescope man_pages<CR>", opts) ]]
--[[ set('n', '<Leader>r', "<CMD>Telescope oldfiles<CR>", opts) -- recent files ]]
--[[ -- set('n', '<Leader>R', "<CMD>Telescope registers<CR>", opts) ]]
--[[ set('n', '<Leader>k', "<CMD>Telescope keymaps<CR>", opts) ]]
--[[ -- set('n', '<Leader>cm', "<CMD>Telescope commands<CR>", opts) ]]
--[[ -- set('n', '<C-/') ]]

-- lsp mappings
--[[ set('n', '<Space>a', "<CMD>lua vim.lsp.buf.code_action()<CR>", opts) ]]
--[[ set('n', '<Space>d', "<CMD>Telescope lsp_document_diagnostics<CR>", opts) ]]
--[[ set('n', '<Space>w', "<CMD>Telescope lsp_workspace_diagnostics<CR>", opts) ]]
--[[ set('n', '<Space>f', "<CMD>lua vim.lsp.buf.format{async=true}<CR>", opts) ]]
--[[ set('n', '<Space>i', "<CMD>LspInfo<CR>", opts) ]]
--[[ set('n', '<Space>m', "<CMD>Mason<CR>", opts) ]]
--[[ set('n', '<Space>j', "<CMD>lua vim.lsp.diagnostic.goto_next()<CR>", opts) ]]
--[[ set('n', '<Space>k', "<CMD>lua vim.lsp.diagnostic.goto_prev()<CR>", opts) ]]
--[[ set('n', '<Space>l', "<CMD>lua vim.lsp.codelens.run()<CR>", opts) ]]
--[[ set('n', '<Space>q', "<CMD>lua vim.lsp.diagnostic.set_loclist()<CR>", opts) ]]
--[[ set('n', '<Space>rn', "<CMD>lua nim.lsp.buf.rename()<CR>", opts) ]]
