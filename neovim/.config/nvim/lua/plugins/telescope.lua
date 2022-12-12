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
	},
})
