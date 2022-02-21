#!/usr/bin/sh

if [ "$(xdotool getactivewindow getwindowname)" != "tdrop" ]
then
	xdotool windowunmap $1
fi
