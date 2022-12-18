local ls = require("luasnip")

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local s = ls.snippet
local i = ls.insert_node
-- local f = ls.function_node

ls.add_snippets("go", {
	s(
		"tys",
		fmt(
			[[ 
// {} TODO
type {} struct {{
	{}
}}
	]],
			{
				rep(1),
				i(1),
				i(0),
			}
		)
	),
	s(
		"tyi",
		fmt(
			[[ 
// {} TODO
type {} interface {{
	{}
}}
	]],
			{
				rep(1),
				i(1),
				i(0),
			}
		)
	),
	s(
		"fn",
		fmt(
			[[ 
// {docName} TODO
func ({receiver}) {funcName}({args}) {returnVal} {{
	{}
}}
	]],
			{
				docName = rep(1),
				funcName = i(1),
				args = i(2),
				returnVal = i(3),
				receiver = i(4),
				i(0),
			}
		)
	),
})
