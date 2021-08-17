#!/bin/bash 

export DISPLAY=:0;

cd /home/fpvout/Scripts/fpv-c/ 

./fpv-video-out | ffmpeg -vcodec copy | vlc --sout '#standard{access=http,mux=ts,dst=localhost:8080}'
