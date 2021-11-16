#!/bin/sh

echo "---------------------------------------------"
echo "   Outputting MPD's Current Song and State   "
echo "---------------------------------------------"

SCRIPT_DIR="~/Executables/Stream/"

while true
do
    mpc status state > $SCRIPT_DIR/mpd-status.txt
    
    MPD_STATE=$(cat $SCRIPT_DIR/mpd-status.txt | awk -F'[][]' '{print $2}')
    
    if [ $MPD_STATE == "playing" ]; then
        MPD_SONG=$(mpc current)
        echo $MPD_SONG "            " > $SCRIPT_DIR/mpd-nowplaying.txt
    elif [ $MPD_STATE == "paused" ]; then
        > $SCRIPT_DIR/mpd-nowplaying.txt
    else
        > $SCRIPT_DIR/mpd-nowplaying.txt
    fi
    
    mpc idle player
done
