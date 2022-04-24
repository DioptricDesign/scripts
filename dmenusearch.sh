#!/bin/bash
. "${HOME}/.cache/wal/colors.sh"
search='https://search.brave.com/search?q='
query=$(echo '' | dmenu -p "Search:" -nb "#282828" -nf "$color15" -sb "$color2" -sf "$color15" -h '22' -fn "Jetbrains Mono")
if [ -n "$query" ]; then
  xdg-open "${search}${query}" 2> /dev/null
fi
