#!/bin/bash
/bin/su piob -c "cvlc v4l2:\/\/\/dev\/video0:chroma=mjpg:width=1280:height=720 --sout \"#standard{access=http,mux=mpjpeg,dst=:8081}\""&
echo $! > /tmp/video_vlc.pid

/bin/bash -c 'kill -s SIGTERM `cat /tmp/video_vlc.pid` && rm /tmp/video_vlc*'

/bin/su piob -c "cvlc v4l2:\/\/\/dev\/video0:chroma=mjpg:width=1280:height=720 --sout \"#standard{access=http,mux=mpjpeg,dst=:8081}\""&
echo $! > /tmp/video_vlc.pid
