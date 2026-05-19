local wezterm = require("wezterm")
local home = os.getenv("HOME")

return {
	enable_wayland = false,

	default_prog = { "/bin/zsh", "-i" },

	color_scheme_dirs = { home .. "/.cache/wal" },
	color_scheme = "wezterm-wal",

	font = wezterm.font("Maple Mono NF CN"),
	font_size = 13,

	window_background_opacity = 0.8,
	initial_cols = 165,
	initial_rows = 38,

	adjust_window_size_when_changing_font_size = false,
}
