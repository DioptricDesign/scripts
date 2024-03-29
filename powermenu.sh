#!/bin/bash

# options to be displayed
option0=" Lock"
option1=" Logout"
option2=" Suspend"
option3=" Reboot"
option4=" Shutdown"

# options passed into variable
options="$option0\n$option1\n$option2\n$option3\n$option4"

chosen="$(echo -e "$options" | rofi -location 3 -dmenu -p " Power")"
case $chosen in
    $option0)
        lock;;
    $option1)
        qtile cmd-obj -o cmd -f shutdown & ;;
    $option2)
        lock && systemctl suspend;;
    $option3)
        systemctl reboot;;
    $option4)
        killall qtile & systemctl poweroff;;
esac
