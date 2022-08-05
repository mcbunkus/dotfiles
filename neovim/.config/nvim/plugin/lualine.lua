local ok, lualine = pcall(require, "lualine")

if not ok then
	return
end

local function time()
	return vim.fn.strftime(" %H:%M:%S")
end

lualine.setup({
	options = {
		globalstatus = true,
	},
	sections = {
		lualine_x = { "filetype" },
		lualine_b = { "branch", "diff" },
		lualine_y = { "diagnostics" },
		lualine_z = { time },
	},
	inactive_sections = {
		lualine_x = {},
	},
	extensions = {
		"toggleterm",
	},
})
