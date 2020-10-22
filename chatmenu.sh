#!/bin/bash

# options to be displayed
option0="Discord"
option1="Hex Chat IRC"
option2="Element Matrix Client "
# options to be displyed
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" | rofi -lines 3 -dmenu -p "Messaging Clients")"
case $selected in
    $option0)
	discord & notify-send 'In this cyberpunk dystopia' 'chat reads you';;
    $option1)
	hexchat;;
    $option2)
	element-desktop;;
esac
