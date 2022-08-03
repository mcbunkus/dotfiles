local augroup = vim.api.nvim_create_augroup("MoveHelpWindow", {})

-- move a newly opened help page to the right
vim.api.nvim_create_autocmd("BufEnter", {
	group = augroup,
	callback = function()
		local buftype = vim.bo.buftype
		if buftype == "help" then
			vim.cmd([[wincmd L]])
		end
	end,
})
