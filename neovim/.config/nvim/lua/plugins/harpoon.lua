return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon").setup({
			menu = {
				width = vim.api.nvim_win_get_width(0) / 2,
			},
		})

		require("telescope").load_extension("harpoon")
	end,
}
