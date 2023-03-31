local ls = require("luasnip")

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local s = ls.snippet
local i = ls.insert_node
-- local f = ls.function_node

ls.add_snippets("cpp", {
	s(
		"fn",
		fmt(
			[[
{rt} {fname}({args}) {{
	{body}
}}
	]],
			{
				fname = i(1),
				args = i(2),
				rt = i(3, "void"),
				body = i(0),
			}
		)
	),
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
	s(
		"inf",
		fmt(
			[[
class {} {{
  public:
	{}

	virtual ~{}() = default;
}};
	]],
			{
				i(1),
				i(0),
				rep(1),
			}
		)
	),
	s(
		"md",
		fmt(
			[[
{} {}({}){};
	]],
			{
				i(3),
				i(1),
				i(2),
				i(0, " override"),
			}
		)
	),
	s(
		"inf",
		fmt(
			[[
class {} {{
  public:
	{}

	virtual ~{}() = default;
}};
	]],
			{
				i(1),
				i(0),
				rep(1),
			}
		)
	),
	s(
		"co",
		fmt(
			[[
std::cout << {} << std::endl;
	]],
			{
				i(0),
			}
		)
	),
})
