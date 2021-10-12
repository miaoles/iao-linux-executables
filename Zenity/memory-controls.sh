#! /bin/sh

BSPWM_SYSTEM_CONTROL=$(zenity --list \
   --title="Memory Controls" \
   --width="240" \
   --height="300" \
   --text="Choose a memory control option:" \
   --column="Option" \
   "ClearPageCache" \
   "ClearDentriesandInodes" \
   "ClearAll")

if [ $BSPWM_SYSTEM_CONTROL == "ClearPageCache" ]; then
   sync; echo 1 > /proc/sys/vm/drop_caches
elif [ $BSPWM_SYSTEM_CONTROL == "ClearDentriesandInodes" ]; then
   sync; echo 2 > /proc/sys/vm/drop_caches
elif [ $BSPWM_SYSTEM_CONTROL == "ClearAll" ]; then
   sync; echo 3 > /proc/sys/vm/drop_caches
fi