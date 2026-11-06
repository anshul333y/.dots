print_banner() {
  GREEN="\033[38;2;0;255;70m"
  NC="\033[0m"
  echo -e "$GREEN"
  cat << "EOF"
                                                                                                        
                                   ▄▄                  ▄▄▄▄       ▄▄▄▄▄     ▄▄▄▄▄     ▄▄▄▄▄             
                                   ██                  ▀▀██      █▀▀▀▀██▄  █▀▀▀▀██▄  █▀▀▀▀██▄           
      ▄█████▄  ██▄████▄  ▄▄█████▄  ██▄████▄  ██    ██    ██           ▄██       ▄██       ▄██  ▀██  ███ 
      ▀ ▄▄▄██  ██▀   ██  ██▄▄▄▄ ▀  ██▀   ██  ██    ██    ██        █████     █████     █████    ██▄ ██  
     ▄██▀▀▀██  ██    ██   ▀▀▀▀██▄  ██    ██  ██    ██    ██           ▀██       ▀██       ▀██    ████▀  
     ██▄▄▄███  ██    ██  █▄▄▄▄▄██  ██    ██  ██▄▄▄███    ██▄▄▄   █▄▄▄▄██▀  █▄▄▄▄██▀  █▄▄▄▄██▀     ███   
      ▀▀▀▀ ▀▀  ▀▀    ▀▀   ▀▀▀▀▀▀   ▀▀    ▀▀   ▀▀▀▀ ▀▀     ▀▀▀▀    ▀▀▀▀▀     ▀▀▀▀▀     ▀▀▀▀▀       ██    
                                                                                                ███     
                                                                                                        
EOF
  echo -e "$NC"
}

# ascii art
print_banner

# power profile
if [[ "$(cat /sys/class/power_supply/ADP1/online 2>/dev/null)" == "1" ]]; then
    powerprofilesctl set performance
  else
    powerprofilesctl set balanced
fi

if [[ "$(tty)" == "/dev/tty1" || -n "$GDMSESSION" ]]; then
  # mpd server start
  [ ! -s ~/.config/mpd/pid ] && mpd

  # hyprstyle
  ~/.local/bin/hyprstyle

  # hyprland start
  if uwsm check may-start; then
   exec uwsm start hyprland-uwsm.desktop
  fi
fi
