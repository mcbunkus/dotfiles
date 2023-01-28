require("catppuccin").setup({
	flavour = "mocha",
	custom_highlights = function(colors)
		return {
			-- ["@method"] = { fg = colors.sapphire },
			["@type"] = { fg = colors.lavender },
			-- ["@type.qualifier"] = { fg = colors.sky },
			-- ["@type.builtin"] = { fg = colors.teal },
		}
	end,
})
