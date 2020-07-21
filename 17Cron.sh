#!/bin/bash
rsync -aAXv --delete --exclude-from='/home/user/Documents/Scripts/exclusions.txt' /home/ /run/media/user/WD\ 1TB/Backup/ && pacman -Qqe > /run/media/user/WD\ 1TB/Backup/Package\ List.txt && notify-send '5:00 Backup Completed' || notify-send 'Backup Failed Was Backup Drive Mounted?'
