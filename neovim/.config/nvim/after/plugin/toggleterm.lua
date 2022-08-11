local ok, toggleterm = pcall(require, "toggleterm")

if not ok then
	return
end

toggleterm.setup({
	float_opts = {
		border = "single",
	},
	highlights = {
		FloatBorder = {
			guifg = "#ebb9b9",
		},
	},
})
