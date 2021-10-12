#!/bin/sh

echo "---------------------------------------------"
echo "   Outputting MPD's Current Song and State   "
echo "---------------------------------------------"

while true
do
    mpc status state > /home/miles/Executables/Twitch/mpd-status.txt
    
    MPD_STATE=$(cat /home/miles/Executables/Twitch/mpd-status.txt | awk -F'[][]' '{print $2}')
    
    if [ $MPD_STATE == "playing" ]; then
        MPD_SONG=$(mpc current)
        echo $MPD_SONG "            " > /home/miles/Executables/Twitch/mpd-nowplaying.txt
    elif [ $MPD_STATE == "paused" ]; then
        > /home/miles/Executables/Twitch/mpd-nowplaying.txt
    else
        > /home/miles/Executables/Twitch/mpd-nowplaying.txt
    fi
    
    mpc idle player
done