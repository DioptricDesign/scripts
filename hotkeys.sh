 #!/bin/bash 
notify-send -t 5000 "Hotkeys" "$(sed -n 38,108p  ~/.config/qtile/config.py
)"
