return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "kyazdani42/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")

		lualine.setup({
			options = {
				globalstatus = true,
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {},
				lualine_c = { "filetype", "branch", "diff" },
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "diagnostics" },
			},
			tabline = {},
			winbar = {
				lualine_c = { "filename" },
			},
			inactive_winbar = {
				lualine_c = { "filename" },
			},
		})
	end,
}
