#!/bin/sh

xrdb /home/andreas/.Xresources
xrandr --dpi 192

compton -b &
mpd &
# nitrogen --restore &
# conky &
# xsetroot -cursor_name left_ptr
# ibus-daemon &
# i3blocks &

exec i3
