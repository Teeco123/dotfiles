local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action
local config = {}

config.color_scheme = "ChallengerDeep"

wezterm.on("gui-startup", function(cmd)
	-- Starting default workspace
	local defaultTab, defaultPane, defaultWindow = mux.spawn_window({
		workspace = "Default",
		cwd = wezterm.home_dir,
	})
	defaultWindow:gui_window():maximize()

	-- AI Calendar workspace
	local tab1, pane1, window = mux.spawn_window({
		workspace = "Aicalendar",
		cwd = "/Users/kacper/Work/aicalendar/aicalendar",
	})
	tab1:set_title("AICalendar")

	local tab2, pane2 = window:spawn_tab({
		cwd = "/Users/kacper/Work/aicalendar/app-web",
	})
	tab2:set_title("app-web")

	local tab3, pane3 = window:spawn_tab({
		cwd = "/Users/kacper/Work/aicalendar/api-user-service",
	})
	tab3:set_title("user-service")

	local tab4, pane4 = window:spawn_tab({
		cwd = "/Users/kacper/Work/aicalendar/api-event-service",
	})
	tab3:set_title("event-service")

	-- Set default workspace
	mux.set_active_workspace("Default")
end)

wezterm.on("update-right-status", function(window, pane)
	window:set_right_status(window:active_workspace())
end)

config.keys = {
	{
		key = "9",
		mods = "ALT",
		action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }),
	},
	{ key = "]", mods = "CTRL", action = act.SwitchWorkspaceRelative(1) },
	{ key = "[", mods = "CTRL", action = act.SwitchWorkspaceRelative(-1) },
}

return config
