-- Keybindings

local telescope_builtin = require("telescope.builtin")
local nt_api = require("nvim-tree.api")

-- leader key and mouse
vim.g.mapleader = " "
vim.cmd([[set mouse=a]])

vim.keymap.set("n", "<leader>s", "<cmd>so %<cr>")

-- window management
vim.keymap.set({ "n", "i" }, "<c-h>", "<c-w>h")
vim.keymap.set({ "n", "i" }, "<c-j>", "<c-w>j")
vim.keymap.set({ "n", "i" }, "<c-k>", "<c-w>k")
vim.keymap.set({ "n", "i" }, "<c-l>", "<c-w>l")

-- splitting
vim.keymap.set("n", "<leader>j", "<cmd>split<bar>wincmd J<cr>")
vim.keymap.set("n", "<leader>k", "<cmd>vsplit<bar>wincmd L<cr>")

-- closing
vim.keymap.set("n", "<leader>q", "<cmd>close<cr>")

-- buffer stuff
vim.keymap.set("n", "H", "<cmd>bprevious<cr>")
vim.keymap.set("n", "L", "<cmd>bnext<cr>")
vim.keymap.set("n", "<leader>d", "<cmd>bp<bar>bd#<cr>")

-- Telescope bindings
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files)
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep)
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers)
vim.keymap.set("n", "<leader>fc", telescope_builtin.colorscheme)
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags)
vim.keymap.set("n", "<leader>fr", telescope_builtin.reloader)
vim.keymap.set("n", "<leader>fk", telescope_builtin.keymaps)
vim.keymap.set("n", "<leader>ft", telescope_builtin.tags)
vim.keymap.set("n", "<leader>fs", telescope_builtin.current_buffer_fuzzy_find)
vim.keymap.set("n", "<leader>lr", telescope_builtin.lsp_references)
vim.keymap.set("n", "<leader>ld", telescope_builtin.lsp_document_symbols)
vim.keymap.set("n", "<leader>lw", telescope_builtin.lsp_workspace_symbols)

-- nvim-tree
vim.keymap.set("n", "<leader>ee", nt_api.tree.toggle)
vim.keymap.set("n", "<leader>ef", nt_api.tree.focus)

-- toggleterm stuff
vim.keymap.set("n", "<A-i>", "<cmd>ToggleTerm direction=float<cr>")
vim.keymap.set("n", "<A-h>", "<cmd>ToggleTerm size=20 direction=horizontal<cr>")
vim.keymap.set("n", "<A-v>", "<cmd>ToggleTerm size=80 direction=vertical<cr>")

vim.keymap.set("t", "<A-i>", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<A-h>", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<A-v>", "<cmd>ToggleTerm<cr>")
