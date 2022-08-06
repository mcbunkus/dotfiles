-- Keybindings

local telescope = require("telescope")
local ntapi = require("nvim-tree.api")
local wk = require("which-key")

local builtins = require("telescope.builtin")

-- leader key and mouse
vim.g.mapleader = " "
vim.cmd([[set mouse=a]])

wk.register({
	s = { "<cmd>so %<cr>", "Source Buffer" },
	q = { "<cmd>close<cr>", "Close Window" },
	d = { "<cmd>bp<bar>bd#<cr>", "Delete Buffer" },
	j = { "<cmd>split<bar>wincmd J<cr>", "Split Down" },
	k = { "<cmd>vsplit<bar>wincmd L<cr>", "Split Right" },
	H = { "<cmd>bprevious<cr>", "Previous Buffer" },
	L = { "<cmd>bnext<cr>", "Next Buffer" },
}, { prefix = "<leader>" })

-- window management
vim.keymap.set({ "n", "i" }, "<c-h>", "<c-w>h")
vim.keymap.set({ "n", "i" }, "<c-j>", "<c-w>j")
vim.keymap.set({ "n", "i" }, "<c-k>", "<c-w>k")
vim.keymap.set({ "n", "i" }, "<c-l>", "<c-w>l")

-- wrapper for enabling preview of colorschemes
local function colorschemes()
	builtins.colorscheme({ enable_preview = true })
end

-- Telescope bindings
wk.register({
	f = {
		name = "Telescope",
		f = { builtins.find_files, "Find Files" },
		g = { builtins.live_grep, "Grep Workspace" },
		b = { builtins.buffers, "Buffers" },
		c = { colorschemes, "Colorschemes" },
		h = { builtins.help_tags, "Help" },
		r = { builtins.reloader, "Reload Modules" },
		k = { builtins.keymaps, "Keymaps" },
		t = { builtins.tags, "Tags" },
		s = { builtins.current_buffer_fuzzy_find, "Buffer" },
		p = { telescope.extensions.projects.projects, "Projects" },
		o = { builtins.vim_options, "Options" },
	},
	l = {
		name = "Telescope LSP",
		u = { builtins.lsp_references, "Find References" },
		d = { builtins.lsp_document_symbols, "Document Symbols" },
		w = { builtins.lsp_workspace_symbols, "Workspace Symbols" },
	},
}, { prefix = "<leader>" })

-- nvim-tree
wk.register({
	e = {
		e = { ntapi.tree.toggle, "Toggle Nvim-Tree" },
		f = { ntapi.tree.focus, "Focus Nvim-Tree" },
	},
}, { prefix = "<leader>" })

-- toggleterm stuff
wk.register({
	["<M-i>"] = { "<cmd>ToggleTerm direction=float<cr>", "Toggle Floating Terminal" },
	["<M-h>"] = { "<cmd>ToggleTerm size=20 direction=horizontal<cr>", "Toggle Horizontal Terminal" },
	["<M-v>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Toggle Vertical Terminal" },
})

-- toggleterm stuff, but in terminal mode
vim.keymap.set("t", "<A-i>", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<A-h>", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<A-v>", "<cmd>ToggleTerm<cr>")
