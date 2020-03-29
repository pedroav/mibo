#!/bin/bash
killall ffmpeg
ps -aux |grep -v grep |grep -i EJDNBH >/dev/null && echo "`date` - FFMPEG IC5 is running" >> /var/log/messages || `ffmpeg -i rtsp://admin:EJDNBH@IC5-Back/cam/realmonitor -acodec copy -vcodec copy -f segment -strftime 1 -segment_time 300 -segment_format mp4 /media/pi/PE32GB/Videos/IC5/backyard-%Y-%m-%d_%H-%M-%S.mp4`&
ps -aux |grep -v grep |grep -i MWIOZZ >/dev/null && echo "`date` - FFMPEG IC3 is running" >> /var/log/messages || `ffmpeg -i rtsp://admin:MWIOZZ@IC3-Library/cam/realmonitor -acodec copy -vcodec copy -f segment -strftime 1 -segment_time 300 -segment_format mp4 /media/pi/PE32GB/Videos/IC3/library-%Y-%m-%d_%H-%M-%S.mp4`&
