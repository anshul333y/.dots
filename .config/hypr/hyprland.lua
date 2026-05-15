------------------------------------
--- anshul333y's hyprland config ---
------------------------------------

Hyprcolor = dofile(os.getenv("HOME") .. "/.cache/wal/hyprcolor.lua")

--- ENVIRONMENT ---

require("custom.env")

--- LOOK AND FEEL ---

require("custom.looks")

--- INPUT ---

require("custom.input")

--- KEYBINDINGS ---

require("custom.keys")

--- WINDOWS AND WORKSPACES ---

require("custom.windows")
