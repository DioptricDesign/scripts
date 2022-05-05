#!/bin/bash

# options to be displayed
option0="On"
option1="Off"

# options to be displyed
options="$option0\n$option1"

selected="$(echo -e "$options" | rofi -dmenu -p " Picom")"
case $selected in
    $option0)
        compton --experimental-backends  & notify-send 'Woah Buddy.' 'Compositing on!' ;;
    $option1)
        killall compton & notify-send 'You Killed Compton!.' 'Compositing off';;
esac
