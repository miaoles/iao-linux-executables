#!/bin/bash

sleep 6;

# Set Mouse Properties (Speed and Middle Click Scroll)

DEVICE_NAME="Gaming Mouse"
ACCELERATION_SPEED=0.5 #0.0-1.0

# Increase Mouse Acceleration Speed
#xinput --set-prop "${DEVICE_NAME}" 'libinput Accel Speed' ${ACCELERATION_SPEED}

# Enable Button Scroll Method
xinput --set-prop "${DEVICE_NAME}" "libinput Scroll Method Enabled" 0, 0, 1

# Sets Front Mouse Button as Button Scrolling Button
xinput --set-prop "${DEVICE_NAME}" "libinput Button Scrolling Button" 9
