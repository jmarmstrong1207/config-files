#!/bin/sh

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources


# Programs that dont automatically run by DE or display manager
dunst &

# start programs, not just WMs/DEs, via startx ~/.xinitrc "program"
if [[ "$1" = "" ]]; then
	exec i3
else
	exec $1
fi
