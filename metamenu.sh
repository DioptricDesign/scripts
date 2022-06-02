#!/bin/bash

# options to be displayed
option0="Calendar"
option1="Chat"
option2="Compositing"
option3="Games"
option4="Graphics"
option5="Hotkeys"
option6="Libraries"
option7="Output"
option8="Power"
option9="Screen Shot"
option10="Sensors"
option11="Timers"
option12="X Auto Lock"
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5\n$option6\n$option7\n$option8\n$option9\n$option10\n$option11\n$option12"

selected="$(echo -e "$options" | rofi -lines 12 -width 20 -location 5 -yoffset -22 -dmenu -p " Meta Menu")"
case $selected in
    $option0)
        calendarmenu;;
    $option1)
        chatmenu;;
    $option2)
        comptonmenu;;
    $option3)
        gamesmenu;;
    $option4)
        graphicsmenu;;
    $option5)
        hotkey;;
    $option6)
        libmenu;;
    $option7)
        outputmenu;;
    $option8)
        powermenu;;
    $option9)
        scrotmenu;;
    $option10)
        sensornote;;
    $option11)
        timermenu;;
    $option12)
        xautolockmenu;;
esac
