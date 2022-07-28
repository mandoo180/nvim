local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

local g = vim.g
local api = vim.api

return require'packer'.startup(function() 
	use 'wbthomason/packer.nvim'

	use 'hrsh7th/nvim-compe'
	use 'jiangmiao/auto-pairs'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'kevinhwang91/rnvimr'
	use 'nvim-treesitter/nvim-treesitter'
	use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
	use 'tpope/vim-commentary'
	use 'tpope/vim-surround'
	use 'tpope/vim-repeat'
	use 'tpope/vim-sensible'
	use 'tpope/vim-fugitive'
	-- use 'vim-airline/vim-airline'
	-- use 'vim-airline/vim-airline-themes'
  -- use 'kyazdani42/nvim-web-devicons'
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

  -- color scheme
  vim.cmd[[colorscheme tokyonight]]

  -- airline configs
  -- g['airline#extensions#tabline#enabled'] = 1
  -- g['airline#extensions#tabline#left_sep'] = ''
  -- g['airline#extensions#tabline#left_alt_sep'] = ''
  -- g['airline#extensions#tabline#right_sep'] = ''
  -- g['airline#extensions#tabline#right_alt_sep'] = ''
  -- g.airline_powerline_fonts = 1
  -- g.airline_left_sep = ''
  -- g.airline_right_sep = ''
  -- g.airline_theme = 'onedark'

  -- commentary configs
  api.nvim_set_keymap('n', '<space>/', ':Commentary<cr>', {noremap = true})
  api.nvim_set_keymap('v', '<space>/', ':Commentary<cr>', {noremap = true})

  -- ranger configs
  g.rnvimr_ex_enable = 1
  api.nvim_set_keymap('n', '<space><space>', ':RnvimrToggle<cr>', {noremap = true})

  -- fzf configs
  api.nvim_set_keymap('n', '<space>h', ':History<cr>', {noremap = true})
  api.nvim_set_keymap('n', '<space>b', ':Buffer<cr>', {noremap = true})
  api.nvim_set_keymap('n', '<space>f', ':Files<cr>', {noremap = true})

  -- lsp configs
  api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {noremap = true})
  api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {noremap = true})
  api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {noremap = true})
  api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {noremap = true})
  api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', {noremap = true})
  api.nvim_set_keymap('n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', {noremap = true})
  api.nvim_set_keymap('n', '<space>n', '<cmd>lua vim.lsp.buf.goto_next()<cr>', {noremap = true})
  api.nvim_set_keymap('n', '<bs>n', '<cmd>lua vim.lsp.buf.goto_prev()<cr>', {noremap = true})

  vim.cmd 'autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)'
  vim.cmd 'autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)'
  vim.cmd 'autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)'

end)



