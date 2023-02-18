return {
	"mfussenegger/nvim-dap",
	dependencies = { "rcarriga/nvim-dap-ui", "folke/neodev.nvim" },
	config = function()
		require("neodev").setup({
			library = { plugins = { "nvim-dap-ui" }, types = true },
		})

		local dap = require("dap")

		require("dapui").setup()

		dap.adapters.lldb = {
			type = "executable",
			command = "/usr/bin/lldb-vscode",
			name = "lldb",
		}

		dap.configurations.cpp = {
			{
				name = "Launch",
				type = "lldb",
				request = "launch",
				program = function()
					return vim.fn.input({ prompt = "Executable: " .. vim.fn.getcwd() .. "/" })
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				args = {},
			},
		}
	end,
}
