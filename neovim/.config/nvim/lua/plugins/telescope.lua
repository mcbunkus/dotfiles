return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				border = true,
				path_display = "smart",
				borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				layout_config = {
					prompt_position = "top",
				},
				sorting_strategy = "ascending",
				file_ignore_patterns = {
					"*.o",
					"*.d",
				},
			},
		})
	end,
}
