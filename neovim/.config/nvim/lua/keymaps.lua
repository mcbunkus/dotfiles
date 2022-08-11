-- Keybindings

local builtins = require("telescope.builtin")
local telekasten = require("telekasten")
local ntapi = require("nvim-tree.api")
local wk = require("which-key")

-- leader key and mouse
vim.g.mapleader = " "

wk.register({
	s = { "<cmd>so %<cr>", "Source Buffer" },
	q = { "<cmd>close<cr>", "Close Window" },
	d = { "<cmd>bp<bar>bd#<cr>", "Delete Buffer" },
	j = { "<cmd>split<bar>wincmd J<cr>", "Split Down" },
	k = { "<cmd>vsplit<bar>wincmd L<cr>", "Split Right" },
}, { prefix = "<leader>" })

wk.register({
	H = { "<cmd>bprevious<cr>", "Previous Buffer" },
	L = { "<cmd>bnext<cr>", "Next Buffer" },
	K = { vim.lsp.buf.hover, "Show Documentation" },
	g = {
		i = { vim.lsp.buf.implementation, "Go To Implementation" },
		d = { vim.lsp.buf.definition, "Go To Definition" },
		D = { vim.lsp.buf.declaration, "Go To Declaration" },
	},
})
-- window management
vim.keymap.set({ "n", "i" }, "<c-h>", "<c-w>h")
vim.keymap.set({ "n", "i" }, "<c-j>", "<c-w>j")
vim.keymap.set({ "n", "i" }, "<c-k>", "<c-w>k")
vim.keymap.set({ "n", "i" }, "<c-l>", "<c-w>l")

-- wrapper for enabling preview of colorschemes
local function colorschemes()
	builtins.colorscheme({ enable_preview = true })
end

local function open_configs()
	builtins.find_files({ cwd = "~/.config/nvim" })
end

-- Telescope bindings
wk.register({
	f = {
		name = "Telescope",
		f = { builtins.find_files, "Find Files" },
		i = { builtins.git_files, "Find Git Files" },
		g = { builtins.live_grep, "Grep Workspace" },
		b = { builtins.buffers, "Buffers" },
		c = { colorschemes, "Colorschemes" },
		h = { builtins.help_tags, "Help" },
		r = { builtins.reloader, "Reload Modules" },
		k = { builtins.keymaps, "Keymaps" },
		t = { builtins.tags, "Tags" },
		s = { builtins.current_buffer_fuzzy_find, "Buffer" },
		o = { builtins.vim_options, "Options" },
		d = { open_configs, "Edit Config" },
	},
	l = {
		name = "LSP",
		a = { vim.lsp.buf.code_action, "Code Action" },
		r = { vim.lsp.buf.rename, "Rename" },
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

-- telekasten stuff
wk.register({
	n = {
		name = "Telekasten",
		n = { telekasten.panel, "Panel" },
		f = { telekasten.find_notes, "Find Notes" },
		d = { telekasten.find_daily_notes, "Find Daily Notes" },
		s = { telekasten.search_notes, "Search Notes" },
		g = { telekasten.follow_link, "Follow Link" },
		i = { telekasten.insert_link, "Insert Link" },
		b = { telekasten.show_backlinks, "Show Backlinks" },
		t = { telekasten.show_tags, "Show Tags" },
		c = { telekasten.show_calendar, "Show Calendar" },
		x = { telekasten.toggle_todo, "Toggle Todo" },
		z = { telekasten.new_note, "Create a New Note" },
		Z = { telekasten.new_templated_note, "Create a New Note" },
	},
}, { prefix = "<leader>" })

-- toggleterm stuff, but in terminal mode
vim.keymap.set("t", "<A-i>", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<A-h>", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<A-v>", "<cmd>ToggleTerm<cr>")
