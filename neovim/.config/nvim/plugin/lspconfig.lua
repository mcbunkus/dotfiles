local lspconfig = require("lspconfig")

-- Setup lspconfig.
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.sumneko_lua.setup({
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

lspconfig.clangd.setup({
	capabilities = capabilities,
})

lspconfig.bashls.setup({
	capabilities = capabilities,
})
