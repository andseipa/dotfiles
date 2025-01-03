local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("MonoLisa Nerd Font", { weight = 500 })
config.font_size = 16
config.line_height = 1

config.window_close_confirmation = "NeverPrompt"

-- Required for nordic iso keyboard
config.send_composed_key_when_left_alt_is_pressed = true

config.enable_tab_bar = false

config.color_scheme = "Catppuccin Macchiato"

config.window_decorations = "RESIZE"

config.max_fps = 120
config.window_padding = {
	left = 16,
	right = 16,
	top = 8,
	bottom = 8,
}

-- config.disable_default_key_bindings = true
config.keys = {
	-- Turn off the default CMD-m Hide action, allowing CMD-m to
	-- be potentially recognized and handled by the tab
	{
		key = "1",
		mods = "CMD",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "2",
		mods = "CMD",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "3",
		mods = "CMD",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "4",
		mods = "CMD",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

return config
