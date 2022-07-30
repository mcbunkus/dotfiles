require("plugins")
require("keymaps")

-- general settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true

-- so aquarium works :)
vim.o.termguicolors = true

-- set the colorscheme
vim.cmd([[colorscheme aquarium]])
