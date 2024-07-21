local wezterm = require("wezterm")
local SOLID_LEFT_ARROW = utf8.char(0xe0b2)

-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)

-- wezterm.on(
--         'format-tab-title',
--         function(tab, tabs, panes, config, hover, max_width)
--                 local edge_background = '#0b0022'
--                 local background = '#1b1032'
--                 local foreground = '#808080'
--
--                 if tab.is_active then
--                         background = '#2b2042'
--                         foreground = '#c0c0c0'
--                 elseif hover then
--                         background = '#3b3052'
--                         foreground = '#909090'
--                 end
--
--                 local edge_foreground = background
--
--                 -- ensure that the titles fit in the available space,
--                 -- and that we have room for the edges.
--                 local title = wezterm.truncate_right(tab.active_pane.title, max_width - 2)
--
--                 return {
--                         { Background = { Color = edge_background } },
--                         { Foreground = { Color = edge_foreground } },
--                         { Text = SOLID_LEFT_ARROW },
--                         { Background = { Color = background } },
--                         { Foreground = { Color = foreground } },
--                         { Text = title },
--                         { Background = { Color = edge_background } },
--                         { Foreground = { Color = edge_foreground } },
--                         { Text = SOLID_RIGHT_ARROW },
--                 }
--         end
-- )

return {
	font = wezterm.font("mononoki"),
	font_size = 22,
	-- window_background_image = '/Users/ramyjaber/Downloads/anime-demon.jpeg',
	--window_background_image = "/Users/ramyjaber/Downloads/wall-01.png",
	window_background_image = "/Users/ramyjaber/.config/wezterm/image/landscape-anime-digital-art-fantasy-art-wallpaper-9b468c3dc3116f4905f43bc9cddc0cf0.jpg",

	window_background_image_hsb = {
		-- Darken the background image by reducing it to 1/3rd
		brightness = 0.2,

		-- You can adjust the hue by scaling its value.
		-- a multiplier of 1.0 leaves the value unchanged.
		hue = 1.0,

		-- You can adjust the saturation also.
		saturation = 1.0,
	},
	window_decorations = "RESIZE",
	color_scheme = "OceanicMaterial",
	tab_bar_at_bottom = true,
	-- tab_bar_style = {
	--         active_tab_left = wezterm.format {
	--                 { Background = { Color = '#0b0022' } },
	--                 { Foreground = { Color = '#2b2042' } },
	--                 { Text = SOLID_LEFT_ARROW },
	--         },
	--         active_tab_right = wezterm.format {
	--                 { Background = { Color = '#0b0022' } },
	--                 { Foreground = { Color = '#2b2042' } },
	--                 { Text = SOLID_RIGHT_ARROW },
	--         },
	--         inactive_tab_left = wezterm.format {
	--                 { Background = { Color = '#0b0022' } },
	--                 { Foreground = { Color = '#1b1032' } },
	--                 { Text = SOLID_LEFT_ARROW },
	--         },
	--         inactive_tab_right = wezterm.format {
	--                 { Background = { Color = '#0b0022' } },
	--                 { Foreground = { Color = '#1b1032' } },
	--                 { Text = SOLID_RIGHT_ARROW },
	--         },
	-- },
	window_padding = {
		left = 0,
		right = 0,
		bottom = 0,
		top = 0,
	},
	keys = {
		-- This will create a new split and run the `top` program inside it
		{
			key = "d",
			mods = "SUPER",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "s",
			mods = "SUPER",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "w",
			mods = "SUPER",
			action = wezterm.action.CloseCurrentPane({
				confirm = false,
			}),
		},
		{ key = "l", mods = "CTRL", action = wezterm.action.ActivatePaneDirection("Next") },
		{
			key = "h",
			mods = "CTRL",
			action = wezterm.action.ActivatePaneDirection("Prev"),
		},
	},
}
