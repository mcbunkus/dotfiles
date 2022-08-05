local mason_ok, mason = pcall(require, "mason")
local mason_lspconf_ok, mason_lspconf = pcall(require, "mason-lspconfig")

if not (mason_ok or mason_lspconf_ok) then
	return
end

mason.setup()
mason_lspconf.setup()
