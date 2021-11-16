#!/usr/bin/env bash

# obs-tools

SCRIPT_DIR="~/Executables/Stream/"

case $1 in
mpd-output-start)
	${EDITOR} -e 'sh /mpd-nowplaying-output.sh' --hold &
	echo $! > $SCRIPT_DIR/mpd-nowplaying-PID.txt
	;;
mpd-output-end)
	pkill -f mpd-nowplaying-output.sh
	;;
*)
	echo "ERROR"
	;;
esac
