#!/bin/sh

# variables that desktop managers automatically load (must be added to manually start x)
export QT_QPA_PLATFORMTHEME="qt5ct"

# default terminal
export TERMINAL="urxvt"


[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile


# start programs, not just WMs/DEs, via startx ~/.xinitrc "program"
if [[ "$1" = "" ]]; then
	exec i3
else
	exec $1
fi
