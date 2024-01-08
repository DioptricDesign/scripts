#!/bin/bash

# options to be displayed
option0="On"
option1="Off"

# options to be displyed
options="$option0\n$option1"

selected="$(echo -e "$options" | rofi -dmenu -p " Picom")"
case $selected in
    $option0)
        picom  & notify-send 'Woah Buddy.' 'Compositing on!' ;;
    $option1)
        killall picom & notify-send 'You killed picom!.' 'Compositing off';;
esac
