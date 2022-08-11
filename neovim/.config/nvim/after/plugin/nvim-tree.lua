local ok, nvim_tree = pcall(require, "nvim-tree")

if not ok then
	return
end

nvim_tree.setup({
	view = {
		hide_root_folder = true,
	},
})
