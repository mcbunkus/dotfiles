-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Post-install/update hook with neovim command
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	use({
		"williamboman/mason.nvim",
		requires = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
	})

	-- colorschemes
	use({ "FrenzyExists/aquarium-vim" })
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- completion stuff
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lua",
		},
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- using packer.nvim
	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

	use({ "jose-elias-alvarez/null-ls.nvim" })

	use({ "akinsho/toggleterm.nvim" })

	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
	})

	use({ "windwp/nvim-autopairs" })

	use({ "vimwiki/vimwiki" })

	use({ "numToStr/Comment.nvim" })

	use({ "Pocco81/true-zen.nvim" })

	use({ "ahmedkhalf/project.nvim" })
end)
