#!/bin/bash

# options to be displayed
option0="Speakers"
option1="Head-Phones"

# options to be displyed
options="$option0\n$option1"

selected="$(echo -e "$options" | rofi -lines 2 -dmenu -p "Audio Output")"
case $selected in
    $option0)
        ~/Documents/Scripts/sink.sh 1 && notify-send 'Input Changed' 'Stereo-Speakers Activated';;
    $option1)
        ~/Documents/Scripts/sink.sh 0 && notify-send 'Input Changed' 'Head-Phones Activated';;
esac
