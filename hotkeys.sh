 #!/bin/bash 
zenity --list --title="Hotkeys" --column="Hotkeys" "$(sed -n 60,144p ~/.config/qtile/config.py)" --no-markup --height=800 --width=600
