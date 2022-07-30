-- Keybindings

local telescope_builtin = require("telescope.builtin")
local nt_api = require("nvim-tree.api")

-- leader key and mouse
vim.g.mapleader = " "
vim.cmd([[set mouse=a]])

-- window management
vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-l>", "<C-W>l")

-- splitting
vim.keymap.set("n", "<leader>s", "<cmd>split<cr>")
vim.keymap.set("n", "<leader>v", "<cmd>vsplit<cr>")

-- closing
vim.keymap.set("n", "<leader>c", "<cmd>close<cr>")

-- buffer stuff
vim.keymap.set("n", "H", "<cmd>bprevious<cr>")
vim.keymap.set("n", "L", "<cmd>bnext<cr>")
vim.keymap.set("n", "<leader>bc", "<cmd>bdelete<cr>")

-- Telescope bindings
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files)
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep)
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers)
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags)

-- open nvim-tree
vim.keymap.set("n", "<leader>e", nt_api.tree.focus)
