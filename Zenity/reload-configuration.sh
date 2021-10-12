#! /bin/sh

BSPWM_RELOAD_CONFIGURATION=$(zenity --list \
   --title="Reload Configuration File" \
   --width="240" \
   --height="360" \
   --text="Choose an application's configuration to reload:" \
   --column="Option" \
   "feh" \
   "bspwm" \
   "sxhkd" \
   "xrdb" \
   "tint2" \
   "compton")

if [ $BSPWM_RELOAD_CONFIGURATION == "feh" ]; then
   feh --randomize --bg-fill ~/Images/Wallpapers/*
elif [ $BSPWM_RELOAD_CONFIGURATION == "bspwm" ]; then
   sh ~/Configuration/bspwm/bspwmrc
elif [ $BSPWM_RELOAD_CONFIGURATION == "sxhkd" ]; then
   killall sxhkd
   sxhkd
elif [ $BSPWM_RELOAD_CONFIGURATION == "xrdb" ]; then
   xrdb -load .Xdefaults
elif [ $BSPWM_RELOAD_CONFIGURATION == "tint2" ]; then
   killall tint2
   tint2 -c ~/Configuration/tint2/iao_left.tint2rc
   tint2 -c ~/Configuration/tint2/iao_center.tint2rc
   tint2 -c ~/Configuration/tint2/iao_right.tint2rc
elif [ $BSPWM_RELOAD_CONFIGURATION == "compton" ]; then
   killall picom
   picom
fi
