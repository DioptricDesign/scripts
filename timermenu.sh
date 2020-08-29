#!/bin/bash

# options to be displayed
option0="30 seconds"
option1="60 seconds"
option2="10 Minutes"
option3="30 Minutes"
option4="1 Hour"
options="$option0\n$option1\n$option2\n$option3\n$option4"

selected="$(echo -e "$options" | rofi -lines 5 -dmenu -p "Timers")"
case $selected in
    $option0)
        sleep 30 && notify-send "time is  up" "30 seconds";;
    $option1)
        sleep 60 && notify-send "time is  up" "60 seconds";;
    $option2)
        sleep 10m && notify-send "time is up" "10 minutes";;
    $option3)
        sleep 30m && notify-send "time is  up" "30 minutes";;
    $option4)
        sleep 1h && notify-send "time is  up" "1 hour";;
esac
