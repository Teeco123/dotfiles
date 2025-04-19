local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action
local config = {}

config.color_scheme = "ChallengerDeep"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.window_background_opacity = 0.7
config.macos_window_background_blur = 30
config.font_size = 26

wezterm.on("gui-startup", function(cmd)
	--
	-- Starting default workspace
	--
	local defaultTab, defaultPane, defaultWindow = mux.spawn_window({
		workspace = "Default",
		cwd = wezterm.home_dir,
	})
	defaultWindow:gui_window():maximize()

	--
	-- Water renderer workspace
	--
	local tabWR1, paneWR1, windowWR = mux.spawn_window({
		workspace = "Water renderer",
		cwd = "/Users/kacper/Developer/water-renderer/",
	})
	tabWR1:set_title("nvim")
	tabWR1:activate()
	paneWR1:send_text("nvim\n")

	local tabWR2, paneWR2 = windowWR:spawn_tab({
		cwd = "/Users/kacper/Developer/water-renderer/",
	})
	tabWR2:set_title("build")

	--
	-- Multiplayer game workspace
	--
	local tabMG1, paneMG1, windowMG = mux.spawn_window({
		workspace = "Mutliplayer game",
		cwd = "/Users/kacper/Developer/multiplayer-game/",
	})
	tabMG1:set_title("nvim")
	tabMG1:activate()
	paneMG1:send_text("nvim\n")

	local tabMG2, paneMG2 = windowMG:spawn_tab({
		cwd = "/Users/kacper/Developer/multiplayer-game/",
	})
	tabMG2:set_title("server")

	local tabMG3, paneMG3 = windowMG:spawn_tab({
		cwd = "/Users/kacper/Developer/multiplayer-game/",
	})
	tabMG3:set_title("client1")

	local tabMG4, paneMG4 = windowMG:spawn_tab({
		cwd = "/Users/kacper/Developer/multiplayer-game/",
	})
	tabMG4:set_title("client2")

	--
	-- ADHD app workspace
	--
	local tabADHD1, paneADHD1, windowADHD = mux.spawn_window({
		workspace = "ADHD app",
		cwd = "/Users/kacper/Developer/adhd-app/",
	})
	tabADHD1:set_title("nvim")
	tabADHD1:activate()
	paneADHD1:send_text("nvim\n")

	local tabADHD2, paneADHD2 = windowADHD:spawn_tab({
		cwd = "/Users/kacper/Developer/adhd-app/",
	})
	tabADHD2:set_title("git")

	local tabADHD3, paneADH3 = windowADHD:spawn_tab({
		cwd = "/Users/kacper/Developer/adhd-app/",
	})
	tabADHD3:set_title("server")

	--
	-- Data structures workspace
	--
	local tabDS1, paneDS1, windowDS = mux.spawn_window({
		workspace = "Data structures app",
		cwd = "/Users/kacper/Developer/data-structures/",
	})
	tabDS1:set_title("nvim")
	tabDS1:activate()
	paneDS1:send_text("nvim\n")

	local tabDS2, paneDS2 = windowDS:spawn_tab({
		cwd = "/Users/kacper/Developer/data-structures/",
	})
	tabDS2:set_title("git")

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
