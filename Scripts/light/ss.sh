#!/bin/bash

dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" | \
( while true; do
    read X;
    if echo $X | grep "boolean true" &> /dev/null; then
        liquidctl --match NZXT set sync color breathing 000000 c00000
    elif echo $X | grep "boolean false" &> /dev/null; then
	liquidctl --match NZXT set sync color super-rainbow;
        fi
done )


