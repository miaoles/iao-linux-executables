#! /bin/bash

# cd "$1"
# echo "Making MP3 and FLAC directories and moving respective files in this directory"
# echo "$PWD"
mkdir MP3
mkdir FLAC
# echo "Moving MP3 files:"
mv -v *.mp3 "$PWD"/MP3
# echo "Moving FLAC files:"
mv -v *.flac "$PWD"/FLAC