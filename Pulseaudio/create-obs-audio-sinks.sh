#!/bin/sh

# Create PulseAudio combines and sinks for OBS

pactl load-module module-null-sink
pactl load-module module-null-sink
pactl load-module module-null-sink

pactl load-module module-combine-sink sink_name=music-output-combine slaves=2,3
pactl load-module module-combine-sink sink_name=game-output-combine slaves=2,4
pactl load-module module-combine-sink sink_name=video-output-combine slaves=2,5

pacmd 'update-sink-proplist null device.description="Music Null Sink" '
pacmd 'update-sink-proplist null.2 device.description="Game Null Sink" '
pacmd 'update-sink-proplist null.3 device.description="Video Null Sink" '

pacmd 'update-sink-proplist music-output-combine device.description="Music Combined Output" '
pacmd 'update-sink-proplist game-output-combine device.description="Game Combined Output" '
pacmd 'update-sink-proplist video-output-combine device.description="Video Combined Output" '
