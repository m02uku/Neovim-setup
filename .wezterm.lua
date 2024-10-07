-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Dracula (Official)'
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = true
config.font_size = 10
config.enable_scroll_bar = true

-- 背景透過
config.window_background_opacity = 0.80

-- Font
-- To see all available fonts:
    -- `wezterm ls-fonts --list-system`
config.font = wezterm.font("Hack Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"})

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    config.default_domain = 'WSL:Ubuntu'
end

-- and finally, return the configuration to wezterm
return config
