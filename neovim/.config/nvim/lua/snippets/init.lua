local ls = require("luasnip")

ls.config.set_config({
	history = true,
	update_events = "TextChanged,TextChangedI",
	delete_check_events = "TextChanged",
})

require("snippets.cpp")
require("snippets.go")
require("snippets.lua")
require("snippets.python")
