local ls = require("luasnip")

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local s = ls.snippet
local i = ls.insert_node
-- local f = ls.function_node

ls.add_snippets("lua", {
	s(
		"sreq",
		fmt(
			[[
	local {okVar}, {var} = pcall(require, "{mod}")
	if not {okVar2} then 
		return 
	end

	{}
	]],
			{
				okVar = i(1, "ok"),
				var = i(2),
				mod = i(3),
				okVar2 = rep(1),
				i(0),
			}
		)
	),
})
