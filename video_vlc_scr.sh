#!/bin/bash
#if ps -A | grep -q "vlcv";  then
#       /bin/su root -c "killall vlcv"
#fi
# Must be vlca -I "dummy" here since cvlc is only a script running vlc with dummy interface.Renaming this script does nothing.Vlc must be symlinked to use it's new 
# name with killall.
/bin/su user -c "vlcv -I "dummy" v4l2:\/\/\/dev\/video0:chroma=mjpg:width=1280:height=720 vlc://quit --sout \"#standard{access=http,mux=mpjpeg,dst=:8083}\"" &

# echo $! > /tmp/video_vlc.pid

# /bin/bash -c 'kill -s SIGTERM `cat /tmp/video_vlc.pid` && rm /tmp/video_vlc*'

# /bin/su user -c "cvlc v4l2:\/\/\/dev\/video0:chroma=mjpg:width=1280:height=720 --sout \"#standard{access=http,mux=mpjpeg,dst=:8081}\""&
# echo $! > /tmp/video_vlc.pid

