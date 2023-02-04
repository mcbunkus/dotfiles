return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconf = require("mason-lspconfig")
		local lspconfig = require("lspconfig")
		local cmp_lsp = require("cmp_nvim_lsp")

		-- setup lspconfig --
		local client_cp = vim.lsp.protocol.make_client_capabilities()
		local capabilities = cmp_lsp.default_capabilities(client_cp)

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
						filetypes = { "markdown" },
					},
				})
			end,
		})
	end,
}
