#!/bin/bash

mkdir -p /mnt/storage/videos/$(date +%Y)/$(date +%m)/$(date +%d)

ps -aux |grep -v grep |grep -i $PASS_CAM1 >/dev/null && echo "`date` - FFMPEG IC3 Library is running" >> /var/log/messages || `ffmpeg -i rtsp://admin:$PASS_CAM1@IC3-Library/cam/realmonitor -acodec copy -vcodec copy -f segment -strftime 1 -segment_time 300 -segment_format mp4 $PATH_VIDEO_LOCAL/%Y/%m/%d/%Y-%m-%d_%H-%M-%S-library.mp4`&

ps -aux |grep -v grep |grep -i $PASS_CAM2 >/dev/null && echo "`date` - FFMPEG IC5 Back is running" >> /var/log/messages || `ffmpeg -i rtsp://admin:$PASS_CAM2@IC5-Back/cam/realmonitor -acodec copy -vcodec copy -f segment -strftime 1 -segment_time 300 -segment_format mp4 $PATH_VIDEO_LOCAL/%Y/%m/%d/%Y-%m-%d_%H-%M-%S-back.mp4`&

ps -aux |grep -v grep |grep -i $PASS_CAM3 >/dev/null && echo "`date` - FFMPEG IC5 Front is running" >> /var/log/messages || `ffmpeg -i rtsp://admin:$PASS_CAM3@IC5-Front/cam/realmonitor -acodec copy -vcodec copy -f segment -strftime 1 -segment_time 300 -segment_format mp4 $PATH_VIDEO_LOCAL/%Y/%m/%d/%Y-%m-%d_%H-%M-%S-front.mp4`&
