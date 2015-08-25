#!/bin/bash
/bin/su piob -c "cvlc -vvv alsa:\/\/hw:1,0 --sout \"#transcode{acodec=flac,ab=32}:standard{access=http,mux=ogg,dst=:8082}\""&
echo $! > /tmp/audio_vlc.pid

/bin/bash -c 'kill -s SIGTERM `cat /tmp/audio_vlc.pid` && rm /tmp/audio_vlc*'

/bin/su piob -c "cvlc -vvv alsa:\/\/hw:1,0 --sout \"#transcode{acodec=flac,ab=32}:standard{access=http,mux=ogg,dst=:8082}\""&
echo $! > /tmp/audio_vlc.pid

