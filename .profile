#!/bin/sh

xrdb /home/andreas/.Xresources
xrandr --dpi 192
setxkbmap -layout no -variant dvorak -option caps:ctrl_modifier

# compton -b &
# mpd &
# nitrogen --restore &
# conky &
# xsetroot -cursor_name left_ptr
# ibus-daemon &
# i3blocks &

# exec i3
