#!/bin/bash 
notify-send -t 5000 "System Status" "$(sensors | awk {print"GPU"}' NR==3 ||  NR==17 || NR==18 || NR == 19 || NR==20 || NR == 21 || NR==22{print $1,$2}')"
