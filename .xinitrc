#!/bin/sh

xrdb ~/.Xresources
xrandr --dpi 220

compton -b &
mpd &
# nitrogen --restore &
# conky &
# xsetroot -cursor_name left_ptr
# ibus-daemon &
# i3blocks &

exec i3
