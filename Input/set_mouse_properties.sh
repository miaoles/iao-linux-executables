#!/usr/bin/env bash

sleep 6;

# Set Mouse Properties (Speed and Middle Click Scroll)

DEVICE_NAME="pointer:Kingston HyperX Pulsefire Haste"
ACCELERATION_SPEED=0.5 #0.0-1.0

# Increase Mouse Acceleration Speed
#xinput --set-prop "${DEVICE_NAME}" "Evdev Wheel Emulation Button" ${ACCELERATION_SPEED}
#xinput --set-prop "${DEVICE_NAME}" 'libinput Accel Speed' ${ACCELERATION_SPEED}
#xset m 40/10 10
xinput --set-prop "pointer:Kingston HyperX Pulsefire Haste" 'Device Accel Profile' 4
xset m 10/5 5

# Enable Button Scroll Method
#xinput --set-prop "${DEVICE_NAME}" "Evdev Wheel Emulation" 1
#xinput --set-prop "${DEVICE_NAME}" "libinput Scroll Method Enabled" 0, 0, 1

# Sets Front Mouse Button as Button Scrolling Button
#xinput --set-prop "${DEVICE_NAME}" "Evdev Wheel Emulation Button" 9
#xinput --set-prop "${DEVICE_NAME}" "libinput Button Scrolling Button" 9

# Set Scroll Axes (enable Horizontal Scrolling)
#xinput --set-prop "${DEVICE_NAME}" "Evdev Wheel Emulation Axes" 6, 7, 4, 5
