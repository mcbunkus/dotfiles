-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function()

	use '/home/mcbunkus/src/journal.nvim'

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- ye olde treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- le telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use 'wittyjudge/gruvbox-material.nvim'

	-- Collection of configurations for the built-in LSP client
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin

	-- file explorer tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		}
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use "lukas-reineke/lsp-format.nvim"

	use 'tpope/vim-commentary'

	use 'glepnir/dashboard-nvim'

	use 'windwp/nvim-autopairs'


end)
