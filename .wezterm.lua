local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action
local config = {}

config.color_scheme = "ChallengerDeep"

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
