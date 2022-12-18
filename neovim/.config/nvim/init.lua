--
--          ██╗███╗   ██╗██╗████████╗       ██╗     ██╗   ██╗ █████╗
--          ██║████╗  ██║██║╚══██╔══╝       ██║     ██║   ██║██╔══██╗
--          ██║██╔██╗ ██║██║   ██║          ██║     ██║   ██║███████║
--          ██║██║╚██╗██║██║   ██║          ██║     ██║   ██║██╔══██║
--          ██║██║ ╚████║██║   ██║   ██╗    ███████╗╚██████╔╝██║  ██║
--          ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝   ╚═╝    ╚══════╝ ╚═════╝ ╚═╝  ╚═╝
--

require("plugins")
require("options")
require("keymaps")
require("autocmds")
require("snippets")

-- temporary fix for annoying clangd message
local notify = vim.notify
vim.notify = function(msg, ...)
	if msg:match("warning: multiple different client offset_encodings") then
		return
	end

	notify(msg, ...)
end
