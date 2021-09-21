#!/bin/bash
. "${HOME}/.cache/wal/colors.sh"
search='https://duckduckgo.com/?q='
query=$(echo '' | dmenu -p "Search:" -nb "#282828" -nf "$color15" -sb "$color2" -sf "$color15" -h '20' -fn "Noto Sans")
if [ -n "$query" ]; then
  xdg-open "${search}${query}" 2> /dev/null
fi
