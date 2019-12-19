
# ----------------------------------------------------------
#auto-start programs (higher priority apps are higher in the list)

# sudo credentials for starting up ap w/o terminal
/usr/lib/polkit-kde-authentication-agent-1

# power manager
xfce4-power-manager &

# notification daemon
dunst &

# touch gestures
touchegg &

# pause suspend timer
caffeine &

tlp start &

flameshot &

# bluetooth app indicator
blueman-applet &

# network manager
nm-applet &

# automounting manager and tray applet
udiskie --smart-tray &

# compositor for transparency effects
compton -o 0 &

# clipboard manager
clipit &

# volume tray applet
pa-applet &

# turn off mouse cursor when idling
unclutter &

# bluelight filter
redshift-gtk &

screenrotator &

# onscreen keyboard
onboard &

# trackPoint sensitivty settings
xinput set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed" 1
xinput set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Profile Enabled" 1 0

xset r rate 250 &

xcalib -d :0 ~/B140QAN02_0_01.icm 
