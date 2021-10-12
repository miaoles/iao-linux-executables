#! /bin/sh

BSPWM_TWITCH_SCRIPT=$(zenity --list \
   --title="Twitch Scripts" \
   --width="240" \
   --height="240" \
   --text="Choose a script to start:" \
   --column="Option" \
   "mpd-nowplaying-output" \
   "None")

if [ $BSPWM_TWITCH_SCRIPT == "mpd-nowplaying-output" ]; then
   termite -e "sh /home/miles/Executables/Twitch/mpd-nowplaying-output.sh" --hold
elif [ $BSPWM_TWITCH_SCRIPT == "None" ]; then
   echo ''
fi
