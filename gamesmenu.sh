#!/bin/bash

# options to be displayed
option0="Steam"
option1="Lutris"
option2="DosBox"
option3="Retro Arch"

# options to be displyed
options="$option0\n$option1\n$option2\n$option3"

selected="$(echo -e "$options" | rofi -lines 4 -dmenu -p "Games")"
case $selected in
    $option0)
        steam;;
    $option1)
        lutris;;
    $option2)
        dosbox -conf "$XDG_CONFIG_HOME"/dosbox/dosbox.conf;;
    $option3)
        retroarch;;
esac
