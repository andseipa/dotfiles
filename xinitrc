#!/bin/sh

sleep 5
xrdb ~/.Xresources
xrandr --dpi 192
setxkbmap -layout no -variant dvorak -option caps:ctrl_modifier
libinput-gestures-setup start

compton -b &
mpd &
nitrogen --restore &
dropbox &
xautolock -time 10 -locker '/home/andreas/bin/lock' -detectsleep &


exec i3
