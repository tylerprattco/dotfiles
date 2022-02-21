#!/bin/zsh

tdrop -C 'xdotool behave $(xdotool getactivewindow) blur exec ~/Scripts/unmap_if_not_tdrop.sh $(xdotool getactivewindow)' -a -w 1350 -h 25 -y 9 -x 340 terminator --class=tdrop  
killall terminator
