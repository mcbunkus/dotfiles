return {
	"nvim-tree/nvim-tree.lua",
	config = true,
	lazy = true,
	keys = {
		{ "<leader>ee", "<cmd>NvimTreeToggle<cr>", desc = "toggle nvim-tree" },
		{ "<leader>ef", "<cmd>NvimTreeFocus<cr>", desc = "focus nvim-tree" },
		{ "<leader>er", "<cmd>NvimTreeRefresh<cr>", desc = "refresh nvim-tree" },
	},
}
