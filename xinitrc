#!/bin/sh

<<<<<<< HEAD
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
=======
# variables that desktop managers automatically load (must be added to manually start x)
export QT_QPA_PLATFORMTHEME="qt5ct"

# default terminal
export TERMINAL="urxvt"

>>>>>>> 06c0f1be3b9a4d5c9ebb2801d36b4f5857fa7c0c

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources



# start programs, not just WMs/DEs, via startx ~/.xinitrc "program"
if [[ "$1" = "" ]]; then
	exec i3
else
	exec $1
fi
