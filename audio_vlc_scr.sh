#!/bin/bash
#if ps -A | grep -q "vlca";  then
#        /bin/su root -c "killall vlca"
#fi

# Must be vlca -I "dummy" here since cvlc is only a script running vlc with dummy interface.Renaming this script does nothing.Vlc must be symlinked to use it's new 
# name with killall.
/bin/su piob -c "vlca -I "dummy" alsa:\/\/hw:1,0 vlc://quit --sout \"#transcode{acodec=flac,ab=32}:standard{access=http,mux=ogg,dst=:8082}\"" &

#/bin/su root -c "killall vlca"
#/bin/su piob -c "vlca -I "dummy" alsa:\/\/hw:1,0 --sout \"#transcode{acodec=flac,ab=32}:standard{access=http,mux=ogg,dst=:8082}\"" &

# echo $! > /tmp/audio_vlc.pid

# /bin/bash -c 'kill -s SIGTERM `cat /tmp/audio_vlc.pid` && rm /tmp/audio_vlc*'

# /bin/su piob -c "cvlc -vvv alsa:\/\/hw:1,0 --sout \"#transcode{acodec=flac,ab=32}:standard{access=http,mux=ogg,dst=:8082}\""&
# echo $! > /tmp/audio_vlc.pid
