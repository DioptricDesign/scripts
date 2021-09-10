 #!/bin/bash 
zenity --list --title="Hotkeys" --column="Hotkeys" "$(sed -n 53,141p  ~/.config/qtile/config.py)" --no-markup --height=800 --width=600
