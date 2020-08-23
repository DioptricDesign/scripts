#!/bin/bash

# options to be displayed
option0="30 seconds"
option1="60 seconds"
option2="1 hour"
option3="30 minutes"
options="$option0\n$option1\n$option2\n$option3"

selected="$(echo -e "$options" | rofi -lines 4 -dmenu -p "Timers")"
case $selected in
    $option0)
        sleep 30 && notify-send "time is  up" "30 seconds";;
    $option1)
        sleep 60 && notify-send "time is  up" "60 seconds";;
    $option2)
        sleep 1h && notify-send "time is  up" "1 hour";;
    $option3)
        sleep 30m && notify-send "time is  up" "30 minutes";;
esac
