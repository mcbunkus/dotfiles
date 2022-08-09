local ok, ls = pcall(require, "luasnip")

if not ok then
	error("failed to load luasnip in luasnip.lua")
	return
end

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

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
