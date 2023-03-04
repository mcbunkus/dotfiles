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
				lualine_x = { "diagnostics" },
				lualine_y = {
					{
						require("lazy.status").updates,
						cond = require("lazy.status").has_updates,
					},
				},
				lualine_z = {},
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
