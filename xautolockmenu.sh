#!/bin/bash

# options to be displayed

option0="On"

option1="Off"

# options to be displyed

options="$option0\n$option1"

selected="$(echo -e "$options" | rofi -dmenu -p " Autolock")"

case $selected in

    $option0)

      xautolock -time 5 -locker "lock" & notify-send 'Screen Lock Enabled' 'Locking When idle 5 minutes';;

    $option1)

      xautolock -exit & notify-send 'Screen Lock Disabled' 'Remember to lock it yourself.';;
esac
