#!/bin/sh

# Create PulseAudio combines and sinks for OBS

DEFAULT_OUTPUT=alsa_output.pci-0000_0c_00.4.analog-stereo

pactl load-module module-remap-sink sink_name=personal-audio-remap remix=yes master=$DEFAULT_OUTPUT
pactl load-module module-null-sink sink_name=music-null-sink
pactl load-module module-null-sink sink_name=game-null-sink
pactl load-module module-null-sink sink_name=video-null-sink
pactl load-module module-combine-sink sink_name=music-output-combine slaves=personal-audio-remap,music-null-sink
pactl load-module module-combine-sink sink_name=game-output-combine slaves=personal-audio-remap,game-null-sink
pactl load-module module-combine-sink sink_name=video-output-combine slaves=personal-audio-remap,video-null-sink

pacmd 'update-sink-proplist personal-audio-remap device.description="Personal Audio Remap" '
pacmd 'update-sink-proplist music-null-sink device.description="Music Null Sink" '
pacmd 'update-sink-proplist game-null-sink device.description="Game Null Sink" '
pacmd 'update-sink-proplist video-null-sink device.description="Video Null Sink" '
pacmd 'update-sink-proplist music-output-combine device.description="Music Combined Output" '
pacmd 'update-sink-proplist game-output-combine device.description="Game Combined Output" '
pacmd 'update-sink-proplist video-output-combine device.description="Video Combined Output" '

#pactl load-module module-null-sink sink_name=music-null-sink sink_properties=device.description="Music Null Sink"
#pactl load-module module-null-sink sink_name=game-null-sink sink_properties=device.description="Game Null Sink"
#pactl load-module module-null-sink sink_name=video-null-sink sink_properties=device.description="Video Null Sink"
#pactl load-module module-combine-sink sink_name=music-output-combine slaves=personal-audio-remap,music-null-sink sink_properties=device.description="Music Combined Output"
#pactl load-module module-combine-sink sink_name=game-output-combine slaves=personal-audio-remap,game-null-sink sink_properties=device.description="Game Combined Output"
#pactl load-module module-combine-sink sink_name=video-output-combine slaves=personal-audio-remap,video-null-sink sink_properties=device.description="Video Combined Output"
