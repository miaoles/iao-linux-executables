#! /bin/sh

sleep 10

bspwm_selected_window=$(xdotool search --desktop 4 --name PathOfExile_x64)

xdotool windowsize $bspwm_selected_window 1920 810