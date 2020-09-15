#!/bin/bash

# options to be displayed
option0="Speakers"
option1="Head-Phones"

# options to be displyed
options="$option0\n$option1"

selected="$(echo -e "$options" | rofi -lines 2 -dmenu -p "Audio Output")"
case $selected in
    $option0)
        ~/.local/share/scripts/sink.sh 1 && notify-send 'Output Changed' 'Stereo-Speakers Activated';;
    $option1)
        ~/.local/share/scripts/sink.sh 0 && notify-send 'Output Changed' 'Head-Phones Activated';;
esac
