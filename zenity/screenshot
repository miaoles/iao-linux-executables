#! /bin/sh

BSPWM_SCREENSHOT_FILETYPE=$(zenity --list \
   --title="Screenshot" \
   --width="240" \
   --height="240" \
   --text="Choose a screenshot filetype:" \
   --column="Option" \
   "JPG" \
   "PNG")

if [ $BSPWM_SCREENSHOT_FILETYPE == "JPG" ]; then
   scrot -q 100 ~/Images/Screenshots/%d:%m:%Y-%T.jpg
elif [ $BSPWM_SCREENSHOT_FILETYPE == "PNG" ]; then
   scrot -q 100 ~/Images/Screenshots/%d:%m:%Y-%T.png
fi
