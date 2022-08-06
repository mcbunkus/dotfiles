local ok, lspconfig = pcall(require, "lspconfig")

if not ok then
	return
end

-- Setup lspconfig.
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- default configurations
local servers = { "rust_analyzer", "clangd", "bashls", "gopls" }

for _, server in ipairs(servers) do
	lspconfig[server].setup({
		capabilities = capabilities,
	})
end

-- customized language servers

lspconfig.sumneko_lua.setup({
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
		},
	},
})
