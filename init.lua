local g = vim.g
local o = vim.o
local api = vim.api
local cmd = vim.cmd
local set = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

cmd 'autocmd BufWritePost plugins.lua PackerCompile'

require'packer'.startup(function() 
	use 'wbthomason/packer.nvim'

	use 'hrsh7th/nvim-compe'
	use 'jiangmiao/auto-pairs'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'kevinhwang91/rnvimr'
	use 'nvim-treesitter/nvim-treesitter'
	use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'glepnir/lspsaga.nvim'
  use 'kabouzeid/nvim-lspinstall'
	use 'tpope/vim-commentary'
	use 'tpope/vim-surround'
	use 'tpope/vim-repeat'
	use 'tpope/vim-sensible'
	use 'tpope/vim-fugitive'
  use 'folke/tokyonight.nvim'
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'kdheepak/tabline.nvim',
    config = function()
      require'tabline'.setup {enable = false}
    end,
    requires = {'hoob3rt/lualine.nvim', 'kyazdani42/nvim-web-devicons'}
  }
end)

g.mapleader = 'space'
g.python3_host_prog = "/opt/homebrew/bin/python3"

cmd 'syntax enable'
cmd 'filetype plugin indent on'

o.encoding = 'utf-8'
o.fileencoding = 'utf-8'
o.ruler = true
o.mouse = 'a'
o.clipboard = 'unnamedplus'
o.background = 'dark'

o.hidden = true
o.wrap = false

o.splitbelow = true
o.splitright = true

o.smarttab = true
o.expandtab = true
o.smartindent = true
o.autoindent = true
o.number = true
o.cursorline = true
o.showmode = false
o.backup = false
o.writebackup = false

o.laststatus = 0
o.conceallevel = 0
o.tabstop = 2
o.shiftwidth = 2
o.cmdheight = 2
o.pumheight = 10
o.showtabline = 2
o.updatetime = 300
o.timeoutlen = 500

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

require'lualine'.setup {
  options = {
    theme = 'tokyonight'
  },
  tabline = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { require'tabline'.tabline_buffers },
    lualine_x = { require'tabline'.tabline_tabs },
    lualine_y = {},
    lualine_z = {},
  },
}

require'lspconfig'.jedi_language_server.setup {}
require'lspconfig'.tsserver.setup {
  root_dir = function() return vim.loop.cwd() end
}

require'lspsaga'.init_lsp_saga {}

-- lsp configs
set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {noremap = true})
set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {noremap = true})
set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {noremap = true})
set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {noremap = true})
-- set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', {noremap = true})
-- set('n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', {noremap = true})
-- set('n', '<space>n', '<cmd>lua vim.lsp.buf.goto_next()<cr>', {noremap = true})
-- set('n', '<bs>n', '<cmd>lua vim.lsp.buf.goto_prev()<cr>', {noremap = true})

-- lsp saga
set('n', '<space>ca', ':Lspsaga code_action<cr>', { noremap=true })
set('v', '<space>ca', ':<c-u>Lspsaga range_code_action<cr>', { noremap=true })
set('n', 'K', ':Lspsaga hover_doc<cr>', { noremap=true })
set('n', '<c-k>', ':Lspsaga signature_help<cr>', { noremap=true })
set('n', '<space>rn', ':Lspsaga rename<cr>', { noremap=true })
set('n', '<space>pd', ':Lspsaga preview_definition<cr>', { noremap=true })
set('n', '<space>cd', ':Lspsaga show_line_diagnostics<cr>', { noremap=true })
set('n', ']e', ':Lspsaga diagnostic_jump_next<cr>', { noremap=true })
set('n', '[e', ':Lspsaga diagnostic_jump_prev<cr>', { noremap=true })

-- completion
-- TODO: auto-completion & sinppet implementation


-- color scheme
cmd[[colorscheme tokyonight]]

-- commentary configs
set('n', '<space>/', ':Commentary<cr>', {noremap = true})
set('v', '<space>/', ':Commentary<cr>', {noremap = true})

-- ranger configs
g.rnvimr_ex_enable = 1
set('n', '<space><space>', ':RnvimrToggle<cr>', {noremap = true})

-- fzf configs
set('n', '<space>h', ':History<cr>', {noremap = true})
set('n', '<space>b', ':Buffer<cr>', {noremap = true})
set('n', '<space>f', ':Files<cr>', {noremap = true})

cmd 'autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)'
cmd 'autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)'
cmd 'autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)'

-- require('plugins')
-- require('basicconfig')
-- require('keymappings')
-- require('tsserver')
-- require('python-lsp-config')
-- require('lualineconf')

