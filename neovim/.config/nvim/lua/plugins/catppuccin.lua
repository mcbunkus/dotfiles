return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	opts = {
		flavour = "macchiato",
		custom_highlights = function(colors)
			return {
				["@type"] = { fg = colors.pink },
				["@type.builtin"] = { fg = colors.mauve },
			}
		end,
	},
}
