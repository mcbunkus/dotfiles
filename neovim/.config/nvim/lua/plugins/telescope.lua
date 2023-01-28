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

telescope.load_extension("file_browser")
