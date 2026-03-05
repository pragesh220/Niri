local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Fix for your Wayland startup issue
config.enable_wayland = false

--- FONT SETTINGS ---
config.font = wezterm.font("CodeNewRoman Nerd Font", { weight = "Bold", stretch = "Normal", style = "Normal" })
config.font_size = 12.0

--- COLORSCHEME ---
-- Some great options: 'Catppuccin Mocha', 'Tokyo Night', 'Gruvbox Dark'
config.color_scheme = "GruvboxDarkHard"

--Opacity
config.window_background_opacity = 0.9

--titleBar
config.enable_tab_bar = false

--Cursor style
config.default_cursor_style = "SteadyBar"

return config
