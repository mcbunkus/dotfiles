return {
	"akinsho/toggleterm.nvim",
	lazy = true,
	keys = {
		{ "<M-i>", "<cmd>ToggleTerm direction=float<cr>", desc = "toggle floating terminal" },
		{ "<M-b>", "<cmd>ToggleTerm size=20 direction=horizontal<cr>", desc = "toggle horizontal terminal" },
		{ "<M-v>", "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "toggle vertical terminal" },
	},
	opts = {
		float_opts = {
			border = "single",
		},
	},
}
