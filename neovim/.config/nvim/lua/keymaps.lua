-- Keybindings

local telescope = require("telescope")
local ntapi = require("nvim-tree.api")

local builtins = require("telescope.builtin")

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
vim.keymap.set("n", "<leader>ff", builtins.find_files)
vim.keymap.set("n", "<leader>fg", builtins.live_grep)
vim.keymap.set("n", "<leader>fb", builtins.buffers)
vim.keymap.set("n", "<leader>fc", builtins.colorscheme)
vim.keymap.set("n", "<leader>fh", builtins.help_tags)
vim.keymap.set("n", "<leader>fr", builtins.reloader)
vim.keymap.set("n", "<leader>fk", builtins.keymaps)
vim.keymap.set("n", "<leader>ft", builtins.tags)
vim.keymap.set("n", "<leader>fs", builtins.current_buffer_fuzzy_find)
vim.keymap.set("n", "<leader>fp", telescope.extensions.projects.projects)
vim.keymap.set("n", "<leader>fo", builtins.vim_options)
vim.keymap.set("n", "<leader>lu", builtins.lsp_references)
vim.keymap.set("n", "<leader>ld", builtins.lsp_document_symbols)
vim.keymap.set("n", "<leader>lw", builtins.lsp_workspace_symbols)

-- nvim-tree
vim.keymap.set("n", "<leader>ee", ntapi.tree.toggle)
vim.keymap.set("n", "<leader>ef", ntapi.tree.focus)

-- toggleterm stuff
vim.keymap.set("n", "<A-i>", "<cmd>ToggleTerm direction=float<cr>")
vim.keymap.set("n", "<A-h>", "<cmd>ToggleTerm size=20 direction=horizontal<cr>")
vim.keymap.set("n", "<A-v>", "<cmd>ToggleTerm size=80 direction=vertical<cr>")

vim.keymap.set("t", "<A-i>", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<A-h>", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<A-v>", "<cmd>ToggleTerm<cr>")

-- lsp stuff
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>lk", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>ltd", vim.lsp.buf.type_definition)
