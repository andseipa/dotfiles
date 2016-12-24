#!/bin/sh

# ================================================================================
#
#	                 o8o               o8o      .
#	                 `"'               `"'    .o8
#	    oooo    ooo oooo  ooo. .oo.   oooo  .o888oo oooo d8b  .ooooo.
#	     `88b..8P'  `888  `888P"Y88b  `888    888   `888""8P d88' `"Y8
#	       Y888'     888   888   888   888    888    888     888
#	.o.  .o8"'88b    888   888   888   888    888 .  888     888   .o8
#	Y8P o88'   888o o888o o888o o888o o888o   "888" d888b    `Y8bod8P'
#
#					by Andreas Seipajarvi
#
# ================================================================================

sleep 5
xrdb ~/.Xresources
xrandr --dpi 192
setxkbmap -layout no -variant dvorak -option caps:ctrl_modifier
libinput-gestures-setup start

compton -b &
mpd &
nitrogen --restore &
dropbox &
xautolock -time 15 -locker '/home/andreas/bin/lock' -detectsleep &


exec i3
