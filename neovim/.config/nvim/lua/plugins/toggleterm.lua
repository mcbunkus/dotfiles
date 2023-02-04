return {
	"akinsho/toggleterm.nvim",
	config = function()
		local toggleterm = require("toggleterm")

		toggleterm.setup({
			float_opts = {
				border = "single",
			},
		})
	end,
}
