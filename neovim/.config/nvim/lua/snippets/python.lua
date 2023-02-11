local ls = require("luasnip")

local fmt = require("luasnip.extras.fmt").fmt
-- local rep = require("luasnip.extras").rep

local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node

local function python_func_doc_generator(args, parent, user_args)
	local doc_string = {}
	for var in string.gmatch(args[1][1], "%w+") do
		table.insert(doc_string, var .. " -- ")
	end
	return doc_string
end

ls.add_snippets("python", {
	s(
		"cls",
		fmt(
			[[ 
class {}:
	""" TODO """
	def init(self):
		{}
	]],
			{
				i(1),
				i(0, "pass"),
			}
		)
	),
	s(
		"dcls",
		fmt(
			[[ 
@dataclass
class {}:
	{}
	]],
			{
				i(1),
				i(0, "pass"),
			}
		)
	),
	s(
		"fnd",
		fmt(
			[[ 
def {}({}):
	"""
	TODO
	{}
	"""
	{}
	]],
			{
				i(1),
				i(2, "*args, **kwargs"),
				f(python_func_doc_generator, { 2 }, {}),
				i(0, "pass"),
			}
		)
	),
	s(
		"def",
		fmt(
			[[ 
def {}({}):
	{}
]],
			{
				i(1),
				i(2, "*args, **kwargs"),
				i(0, "pass"),
			}
		)
	),
	s(
		"main",
		fmt(
			[[ 
if __name__ == "__main__":
	{}
]],
			{
				i(0, "pass"),
			}
		)
	),
})
