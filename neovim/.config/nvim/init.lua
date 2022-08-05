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
vim.o.scrolloff = 25

-- so aquarium works :)
vim.o.termguicolors = true

-- winbars! :D I like just having the file name
vim.o.winbar = "%h%=%M%t"

-- set the colorscheme
vim.cmd([[colorscheme aquarium]])
