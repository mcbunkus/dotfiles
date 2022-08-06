local ok, feline = pcall(require, "feline")
if not ok then
	return
end

feline.setup({})

feline.winbar.setup()
