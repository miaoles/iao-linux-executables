#! /bin/sh

BSPWM_SYSTEM_CONTROL=$(zenity --list \
   --title="System Controls" \
   --width="240" \
   --height="360" \
   --text="Choose a system control option:" \
   --column="Option" \
   "Lock" \
   "Suspend" \
   "Hibernate" \
   "Exit" \
   "Reboot" \
   "Shutdown")

if [ $BSPWM_SYSTEM_CONTROL == "Lock" ]; then
   sxlock -f "-*-roboto-*-r-*-*-*-*-*-*-*-*-*-*"
elif [ $BSPWM_SYSTEM_CONTROL == "Suspend" ]; then
   sudo systemctl suspend && sxlock -f "-*-roboto-*-r-*-*-*-*-*-*-*-*-*-*"
elif [ $BSPWM_SYSTEM_CONTROL == "Hibernate" ]; then
   sudo systemctl hibernate
elif [ $BSPWM_SYSTEM_CONTROL == "Exit" ]; then
   bspc quit
elif [ $BSPWM_SYSTEM_CONTROL == "Reboot" ]; then
   sudo systemctl reboot
elif [ $BSPWM_SYSTEM_CONTROL == "Shutdown" ]; then
   sudo systemctl poweroff
fi