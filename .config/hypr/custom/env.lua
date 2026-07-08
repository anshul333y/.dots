------------------
---- MONITORS ----
------------------

hl.monitor({
	output = "eDP-1",
	mode = "preferred",
	position = "0x0",
	scale = "1",
})

hl.monitor({
	output = "HDMI-A-1",
	mode = "preferred",
	position = "1920x0",
	scale = "1",
})

---------------------
---- MY PROGRAMS ----
---------------------

Terminal = "footclient"
FileManager = "footclient -e yazi"
Menu = "rofi -show drun"

-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("dunst")
	hl.exec_cmd("waybar")
	hl.exec_cmd("foot --server")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("xrdb -merge ~/.config/x11/Xresources")
end)

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("QT_QPA_PLATFORMTHEME", "hyprqt6engine")
