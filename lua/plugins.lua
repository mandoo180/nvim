local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

local packer = require 'packer'

packer.startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'jiangmiao/auto-pairs'
	-- use 'junegunn/fzf'
	-- use 'junegunn/fzf.vim'
	use 'kevinhwang91/rnvimr'
	use 'nvim-treesitter/nvim-treesitter'
	use 'neovim/nvim-lspconfig'
	-- use 'tpope/vim-commentary'
	-- use 'tpope/vim-surround'
	use 'tpope/vim-repeat'
	use 'tpope/vim-sensible'
	use 'tpope/vim-fugitive'
  use 'glepnir/lspsaga.nvim'

  use 'numToStr/Comment.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'BurntSushi/ripgrep'
  use 'sharkdp/fd'
  use 'kyazdani42/nvim-web-devicons'
  use 'hoob3rt/lualine.nvim'

  use 'nvim-telescope/telescope.nvim'
  use 'akinsho/toggleterm.nvim'
  use 'kyazdani42/nvim-tree.lua'

  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/nvim-cmp'
  -- help: ins-completion
  use 'onsails/lspkind.nvim'

  -- themes
  use 'folke/tokyonight.nvim'
  use 'morhetz/gruvbox'

end)



