-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
-- config.initial_cols = 140
-- config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 16
config.color_scheme = "Gruvbox dark, pale (base16)"
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.term = "xterm-256color"
config.window_decorations = "TITLE | RESIZE" -- NONE
config.enable_tab_bar = false
config.underline_thickness = "2pt"
config.underline_position = "-2pt"
-- You can specify some parameters to influence the font selection;
-- for example, this selects a Bold, Italic font variant.
-- config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold", italic = true })
config.unix_domains = {
	{
		name = "unix",
	},
}
config.default_gui_startup_args = { "connect", "unix" }

-- Finally, return the configuration to wezterm:
return config
