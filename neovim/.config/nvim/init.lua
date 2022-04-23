require 'plugins'
require 'lsp'
require 'keymaps'


require 'gruvbox-material'.setup()
require 'nvim-tree'.setup()
require 'nvim-autopairs'.setup()

require 'lualine'.setup {
	options = {
		theme = "gruvbox-material",
	}
}

vim.cmd [[set guifont=JetBrainsMono\ Nerd\ Font:h11]]


vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true
