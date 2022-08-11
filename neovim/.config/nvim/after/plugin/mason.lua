local mason = require("mason")
local mason_lspconf = require("mason-lspconfig")
local lspconfig = require("lspconfig")

-- Setup lspconfig.
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

mason.setup()
mason_lspconf.setup()

mason_lspconf.setup_handlers({
	function(server)
		lspconfig[server].setup({
			capabilities = capabilities,
		})
	end,
	["sumneko_lua"] = function()
		lspconfig.sumneko_lua.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,
	["marksman"] = function()
		lspconfig.marksman.setup({
			settings = {
				filetypes = { "markdown", "telekasten" },
			},
		})
	end,
})
