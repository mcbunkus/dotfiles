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
	use({ "tanvirtin/monokai.nvim" })
	use({ "sainnhe/sonokai" })

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

	use({ "feline-nvim/feline.nvim", requires = { "kyazdani42/nvim-web-devicons" } })

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { "nvim-lua/plenary.nvim" },
	})

	use({
		"akinsho/bufferline.nvim",
		tag = "v2.*",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("bufferline").setup({})
		end,
	})

	use({ "jose-elias-alvarez/null-ls.nvim" })

	use({ "akinsho/toggleterm.nvim" })

	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({
				view = {
					hide_root_folder = true,
				},
			})
		end,
	})

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	use({
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").setup()
		end,
	})

	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})

	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({
				layout = {
					spacing = 5,
				},
			})
		end,
	})

	use({
		"renerocksai/telekasten.nvim",
		requires = {
			"renerocksai/calendar-vim",
			"frabjous/knap",
		},
	})

	use({ "glepnir/dashboard-nvim" })

	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})
	use({
		"ellisonleao/glow.nvim",
		config = function()
			require("glow").setup({})
		end,
	})

	use({
		"nvim-telescope/telescope-symbols.nvim",
	})
end)
