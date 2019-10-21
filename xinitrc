#!/bin/sh

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# start programs, not just WMs/DEs, via startx ~/.xinitrc "program"
if [[ "$1" = "" ]]; then
	exec i3
else
	exec $1
fi
