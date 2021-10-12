#! /bin/sh

bspwm_selected_window=$(xdotool selectwindow)

bspwm_window_control=$(zenity --forms \
   --title="Window Controls" \
   --width="240" \
   --height="240" \
   --text="Enter pixel or percent values for selected window:" \
	--add-entry="Width" \
	--add-entry="Height" \
	--add-entry="X Position" \
	--add-entry="Y Position")

IFS="|" read -r width height xpos ypos <<< "$bspwm_window_control"

xdotool windowsize $bspwm_selected_window $width $height
xdotool windowmove $bspwm_selected_window $xpos $ypos