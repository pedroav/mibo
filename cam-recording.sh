#!/bin/bash
killall ffmpeg


ps -aux |grep -v grep |grep -i $PASS_CAM1 >/dev/null && echo "`date` - FFMPEG IC3 is running" >> /var/log/messages || `ffmpeg -i rtsp://admin:$PASS_CAM1@IC3-Library/cam/realmonitor -acodec copy -vcodec copy -f segment -strftime 1 -segment_time 300 -segment_format mp4 $PATH_VIDEO_LOCAL_CAM1/library-%Y-%m-%d_%H-%M-%S.mp4`&

ps -aux |grep -v grep |grep -i $PASS_CAM2 >/dev/null && echo "`date` - FFMPEG IC5 is running" >> /var/log/messages || `ffmpeg -i rtsp://admin:$PASS_CAM2@IC5-Back/cam/realmonitor -acodec copy -vcodec copy -f segment -strftime 1 -segment_time 300 -segment_format mp4 $PATH_VIDEO_LOCAL_CAM2/backyard-%Y-%m-%d_%H-%M-%S.mp4`&
