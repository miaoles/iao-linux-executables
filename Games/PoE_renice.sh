#!/bin/sh

sleep 5
POE_PID=$(pgrep -x PathOfExile_x64)
sudo renice -n -15 -p $POE_PID