#!/bin/bash

# options to be displayed
option0="Gimp"
option1="Inkscape"
option2="Scribus"
option3="Darktable"
option4="Shotwell"
option5="Krita"
option6="Design Documents"
# options passed into variable
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5\n$option6"

chosen="$(echo -e "$options" | rofi -dmenu -p "Graphics")"
case $chosen in
    $option0)
        gimp;;
    $option1)
       inkscape;;
    $option2)
       scribus;;
    $option3)
       darktable;;
    $option4)
       shotwell;;
   $option5)
       krita;;
    $option6)
        pcmanfm ~/Documents/DesignDocuments/;;
esac
