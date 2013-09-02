#! /bin/sh

NEW_DESKTOP_NAME=$(zenity --entry --text="Enter new workspace name:")
bspc monitor -a $NEW_DESKTOP_NAME
