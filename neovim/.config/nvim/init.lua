require("plugins")
require("keymaps")
require("autocmds")

-- general settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.relativenumber = true
vim.o.splitright = true
vim.o.splitbelow = true

-- so aquarium works :)
vim.o.termguicolors = true

-- set the colorscheme
vim.cmd([[colorscheme aquarium]])
