require 'plugins'
require 'lsp'
require 'keymaps'

require 'gruvbox-material'.setup()
require 'nvim-tree'.setup()

require 'lualine'.setup {
	options = {
		theme="gruvbox-material", 
	}
}

vim.cmd [[set guifont=JetBrainsMono\ Nerd\ Font:h11]]

vim.g.tabstop = 4
