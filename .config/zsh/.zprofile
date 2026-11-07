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

print_banner

if [[ "$(cat /sys/class/power_supply/ADP1/online 2>/dev/null)" == "1" ]]; then
    powerprofilesctl set performance
  else
    powerprofilesctl set balanced
fi

if [[ "$(tty)" == "/dev/tty1" || -n "$GDMSESSION" ]]; then
  [ ! -s ~/.config/mpd/pid ] && mpd

  ~/.local/bin/hyprstyle

  if uwsm check may-start; then
   exec uwsm start hyprland-uwsm.desktop
  fi
fi
