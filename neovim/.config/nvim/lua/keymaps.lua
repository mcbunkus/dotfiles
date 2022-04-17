-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

-- Movement
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Split management
map("n", "<leader>v", ":vsplit <CR>")
map("n", "<leader>h", ":split <CR>")

-- Telescope :)
map("n", "<leader>ff", ":Telescope find_files <CR>")
map("n", "<leader>fb", ":Telescope buffers <CR>")
map("n", "<leader>fw", ":Telescope lsp_workspace_symbols <CR>")
map("n", "<leader>fd", ":Telescope diagnostics <CR>")
map("n", "<leader>fs", ":Telescope symbols <CR>")
map("n", "<leader>fc", ":Telescope colorscheme <CR>")

-- nvim-tree
map("n", "<leader>t", ":NvimTreeToggle <CR>")
