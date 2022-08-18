-- general settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.scrolloff = 25

-- so aquarium works :)
vim.o.termguicolors = true

vim.o.laststatus = 3

vim.g.catppuccin_flavour = "mocha"

-- set the colorscheme
vim.cmd([[colorscheme aquarium]])
