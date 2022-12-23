-- put your plugins here

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- colorschemes --
	use({ "FrenzyExists/aquarium-vim" })
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "sainnhe/sonokai" })

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	-- status line --
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { "nvim-lua/plenary.nvim" },
	})

	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	use({ "glepnir/dashboard-nvim" })

	-- language server stuff --
	use({
		"williamboman/mason.nvim",
		requires = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
	})

	use({
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").setup()
		end,
	})

	-- completion stuff --
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

	use({ "jose-elias-alvarez/null-ls.nvim" })

	-- tools --

	use({ "akinsho/toggleterm.nvim" })

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
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit for the latest features
		config = function()
			require("nvim-surround").setup({})
		end,
	})
end)