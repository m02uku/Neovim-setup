-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Dracula"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = true
config.font_size = 10
config.enable_scroll_bar = true

-- If windows, set default profile WSL
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    config.default_domain = 'WSL:Ubuntu'
end

-- and finally, return the configuration to wezterm
return config
