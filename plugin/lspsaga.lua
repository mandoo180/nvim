local set = vim.api.nvim_set_keymap

require'lspsaga'.init_lsp_saga {}

-- lsp saga
set('n', '<space>ca', ':Lspsaga code_action<cr>', { noremap=true })
set('v', '<space>ca', ':<c-u>Lspsaga range_code_action<cr>', { noremap=true })
set('n', 'K', ':Lspsaga hover_doc<cr>', { noremap=true })
-- set('n', '<c-k>', ':Lspsaga signature_help<cr>', { noremap=true })
set('n', '<space>rn', ':Lspsaga rename<cr>', { noremap=true })
set('n', '<space>pd', ':Lspsaga preview_definition<cr>', { noremap=true })
set('n', '<space>cd', ':Lspsaga show_line_diagnostics<cr>', { noremap=true })
set('n', ']e', ':Lspsaga diagnostic_jump_next<cr>', { noremap=true })
set('n', '[e', ':Lspsaga diagnostic_jump_prev<cr>', { noremap=true })
