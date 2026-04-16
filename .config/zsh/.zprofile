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

print_separator() {
  GREEN="\033[38;2;0;255;70m"
  NC="\033[0m"
  echo -e "$GREEN"
  cat << "EOF"
                                                                          
                                                                          
                                                                          
                                                                          
      ▀▀▀    ▀▀▀    ▀▀▀    ▀▀▀    ▀▀▀    ▀▀▀    ▀▀▀    ▀▀▀    ▀▀▀    ▀▀▀  
                                                                          
                                                                          
                                                                          
EOF
  echo -e "$NC"
}

# mpd daemon start
[ ! -s ~/.config/mpd/pid ] && mpd

# ascii art
print_banner

# hyprstyle
~/.local/bin/hyprstyle

# separator
print_separator

# hyprland start
if uwsm check may-start; then
  exec uwsm start hyprland-uwsm.desktop
fi
