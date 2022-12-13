local ls = require("luasnip")

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node

ls.config.set_config({
	history = true,
	update_events = "TextChanged,TextChangedI",
	delete_check_events = "TextChanged",
})

ls.add_snippets("cpp", {
	s(
		"ifnd",
		fmt(
			[[
	#ifndef {}
	#define {}

	{}

	#endif // {}
	]],
			{
				i(1, "_HEADER_GUARD"),
				rep(1),
				i(0),
				rep(1),
			}
		)
	),

	s(
		"tds",
		fmt(
			[[ 
	typedef struct {{
		{}
	}} {};
	]],
			{
				i(0),
				i(1, "my_struct_t"),
			}
		)
	),

	s(
		"cls",
		fmt(
			[[ 
    class {} {{
		private: 
		  {}
		public: 
          {}() = default;
		  ~{}() {{}}
	}};
 	]],
			{
				i(1),
				i(0),
				rep(1),
				rep(1),
			}
		)
	),
})

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
})
