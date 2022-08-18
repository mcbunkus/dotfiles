local ok, telescope = pcall(require, "telescope")

if not ok then
	return
end

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
