local wezterm = require("wezterm")

return {
	font = wezterm.font("Caskaydia Cove Nerd Font"),
	color_scheme = "Catppuccin Mocha",
	hide_tab_bar_if_only_one_tab = true,
	window_close_confirmation = "NeverPrompt",
	show_update_window = false,
	use_fancy_tab_bar = false,
	window_padding = {
		left = 2,
		right = 2,
		top = 0,
		bottom = 0,
	},
	keys = {
		{
			key = "h",
			mods = "CTRL|SHIFT",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{
			key = "j",
			mods = "CTRL|SHIFT",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{
			key = "k",
			mods = "CTRL|SHIFT",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{
			key = "l",
			mods = "CTRL|SHIFT",
			action = wezterm.action.DisableDefaultAssignment,
		},
	},
}
