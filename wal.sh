#!/bin/bash
DISPLAY=:0 wal -b 282828 -i ~/.local/share/backgrounds/ -n ; feh --no-fehbg --bg-fill "$(< "${HOME}/.cache/wal/wal")"
dunstcolor 
qtile cmd-obj -o cmd -f restart
