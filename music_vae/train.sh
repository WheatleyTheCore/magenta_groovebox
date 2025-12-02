#!/bin/bash

start_seconds = $SECONDS

music_vae_train \
--config=groovae_2bar_groovebox \
--run_dir=/tmp/groovebox/ \
--mode=train \
--tfds_name=groove/2bar-midionly

end_seconds = $SECONDS

duration=$((end_seconds - start_seconds))
echo "Execution time: $duration seconds"