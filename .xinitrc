#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xset +fp ~/.local/share/fonts &
xset fp rehash &
XDG_SESSION_DESKTOP=x11 &
XDG_CURRENT_DESKTOP=x11 &
DESKTOP_SESSION=x11 &
XDG_SESSION_TYPE=x11 &
# plank &
setxkbmap us &
xsetroot -cursor_name left_ptr &
feh --bg-fill ~/Pictures/Wallpaper/tetris.jpg &
xset r rate 280 80 & 
picom -f --config ~/.config/picom/picom.conf --experimental-backends &
exec bspwm
~/Scripts/start.sh
