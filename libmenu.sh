#!/bin/bash

# options to be displayed
option0="Calibre"
option1="Kwixi"
# options to be displyed
options="$option0\n$option1"

selected="$(echo -e "$options" | rofi -lines 1 -columns 2  -dmenu -p " Libraries")"

case $selected in
    $option0)
        calibre;;
    $option1)
        kiwix-desktop;;
esac
