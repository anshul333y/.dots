--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

hl.window_rule({
	name = "easyeffects-workspace-1",
	match = { class = "org.kde.easyeffects" },

	workspace = "1",
})

hl.window_rule({
	name = "brave-workspace-1",
	match = { class = "brave-browser" },

	workspace = "1",
})

hl.window_rule({
	name = "chrome-workspace-2",
	match = { class = "google-chrome" },

	workspace = "2",
})

hl.window_rule({
	name = "kitty-workspace-3",
	match = { class = "kitty" },

	workspace = "3",
})

hl.window_rule({
	name = "firefox-workspace-4",
	match = { class = "firefox" },

	workspace = "4",
})
