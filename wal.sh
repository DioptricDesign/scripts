#!/bin/bash
DISPLAY=:0 wal -i ~/.local/share/backgrounds/ -n ; feh --no-fehbg --bg-fill "$(< "${HOME}/.cache/wal/wal")"
dunstcolor 
qtile cmd-boj -o cmd -f restart
