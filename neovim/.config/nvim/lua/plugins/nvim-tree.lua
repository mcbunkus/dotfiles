require("nvim-tree").setup({
	view = {
		adaptive_size = true,
		--[[ float = {
			enable = true,
		}, ]]
	},
	renderer = {
		root_folder_label = ":~:r",
		group_empty = true,
	},
})
