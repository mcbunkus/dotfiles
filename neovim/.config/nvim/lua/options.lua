vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.scrolloff = 25
vim.o.termguicolors = true
vim.o.laststatus = 3

vim.g.sonokai_style = "shusia"
vim.cmd([[colorscheme sonokai]])

-- temporary fix for annoying clangd message
local notify = vim.notify
vim.notify = function(msg, ...)
	if msg:match("warning: multiple different client offset_encodings") then
		return
	end

	notify(msg, ...)
end
