-- Keybindings

local telescope = require("telescope.builtin")
local dap = require("dap")
local dapui = require("dapui")
local wk = require("which-key")

-- wrapper for enabling preview of colorschemes
local function colorschemes()
	telescope.colorscheme({ enable_preview = true })
end

local function open_configs()
	telescope.find_files({ hidden = true, cwd = "~/.config/nvim" })
end

local function open_manpages()
	telescope.man_pages({ sections = { "ALL" } })
end

local function find_todos()
	telescope.grep_string({ search = "TODO" })
end

local function find_files()
	telescope.find_files({ hidden = true })
end

-- window management
vim.keymap.set({ "n", "i" }, "<c-h>", "<c-w>h")
vim.keymap.set({ "n", "i" }, "<c-j>", "<c-w>j")
vim.keymap.set({ "n", "i" }, "<c-k>", "<c-w>k")
vim.keymap.set({ "n", "i" }, "<c-l>", "<c-w>l")

wk.register({
	["<M-h>"] = { "<cmd>aboveleft vsplit<cr>", "split left" },
	["<M-j>"] = { "<cmd>split<cr>", "split down" },
	["<M-k>"] = { "<cmd>aboveleft split<cr>", "split up" },
	["<M-l>"] = { "<cmd>vsplit<cr>", "split right" },
	["<M-d>"] = { "<cmd>bp<bar>bd#<cr>", "delete buffer" },
	["<M-q>"] = { "<cmd>close<cr>", "close window" },
	K = { vim.lsp.buf.hover, "show documentation" },
	Q = { "<cmd>wqa<cr>", "exit neovim" },
	g = {
		name = "go to",
		d = { vim.lsp.buf.definition, "go to definition" },
		i = { vim.lsp.buf.implementation, "go to implementation" },
		D = { vim.lsp.buf.declaration, "go to declaration" },
	},
})

-- Leader bindings
wk.register({
	s = { "<cmd>so %<cr>", "source buffer" },
	q = { "<cmd>close<cr>", "close window" },
	b = { telescope.buffers, "search buffers" },
	f = {
		name = "telescope",
		f = { find_files, "find files" },
		i = { telescope.git_files, "find git files" },
		g = { telescope.live_grep, "grep workspace" },
		c = { colorschemes, "colorschemes" },
		h = { telescope.help_tags, "help" },
		r = { telescope.reloader, "reload modules" },
		k = { telescope.keymaps, "keymaps" },
		t = { find_todos, "find todos" },
		s = { telescope.current_buffer_fuzzy_find, "buffer" },
		o = { telescope.vim_options, "options" },
		d = { open_configs, "edit config" },
		m = { open_manpages, "open man pages" },
		q = { telescope.symbols, "find symbol" },
	},
	g = {
		name = "git",
		c = { telescope.git_commits, "commits" },
		x = { telescope.git_bcommits, "buffer commits" },
		b = { telescope.git_branches, "branches" },
		s = { telescope.git_status, "status" },
	},
	l = {
		name = "lsp",
		r = { telescope.lsp_references, "references" },
		d = { telescope.lsp_definitions, "definitions" },
		i = { telescope.lsp_implementations, "implementations" },
		s = { telescope.lsp_document_symbols, "document symbols" },
		w = { telescope.lsp_dynamic_workspace_symbols, "workspace symbols" },
		e = { telescope.diagnostics, "find diagnostics" },
	},
	r = { vim.lsp.buf.rename, "rename symbol" },
	d = {
		name = "dap",
		b = { dap.toggle_breakpoint, "toggle breakpoint" },
		c = { dap.continue, "continue" },
		i = { dap.step_into, "step into" },
		o = { dap.step_over, "step over" },
		g = { dapui.toggle, "toggle dap-ui" },
	},
	h = {
		name = "harpoon",
		h = { require("harpoon.mark").add_file, "add file to harpoon" },
		f = { require("harpoon.ui").toggle_quick_menu, "toggle harpoon quick menu" },
	},
	p = { telescope.commands, "commands" },
}, { prefix = "<leader>" })

-- toggleterm stuff
--wk.register({
--	["<M-i>"] = { "<cmd>ToggleTerm direction=float<cr>", "toggle floating terminal" },
--	["<M-b>"] = { "<cmd>ToggleTerm size=20 direction=horizontal<cr>", "toggle horizontal terminal" },
--	["<M-v>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "toggle vertical terminal" },
--})

-- toggleterm stuff, but in terminal mode
vim.keymap.set("t", "<A-i>", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<A-h>", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<A-v>", "<cmd>ToggleTerm<cr>")
