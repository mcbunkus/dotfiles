vim.g.mapleader = " "

-- Movement
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")


-- Split management
vim.keymap.set("n", "<leader>v", ":vsplit <CR>")
vim.keymap.set("n", "<leader>h", ":split <CR>")

-- Telescope :)
vim.keymap.set("n", "<leader>ff", ":Telescope find_files <CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers <CR>")
vim.keymap.set("n", "<leader>fw", ":Telescope lsp_workspace_symbols <CR>")
vim.keymap.set("n", "<leader>fd", ":Telescope diagnostics <CR>")
vim.keymap.set("n", "<leader>fs", ":Telescope symbols <CR>")
vim.keymap.set("n", "<leader>fc", ":Telescope colorscheme <CR>")

-- nvim-tree
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle <CR>")
