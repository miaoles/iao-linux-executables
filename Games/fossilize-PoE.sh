#!/bin/sh

# fossilize-PoE

echo "Using fossilize-replay to generate DXVK shaders for Path of Exile x64 with $1 threads"
fossilize-replay /home/miles/.local/share/Steam/steamapps/shadercache/238960/fozpipelinesv4/steam_pipeline_cache.foz --progress --pipeline-cache --ignore-derived-pipelines --on-disk-pipeline-cache /opt/cache/mesa_shader_cache/ --num-threads $1
