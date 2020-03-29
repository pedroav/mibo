#!/bin/bash
echo "processo AWS"
ps -aux |grep -i aws
sleep 10
echo "processo ffmpeg"
ps -aux |grep -i ffmpeg
sleep 10
echo "crontab"
crontab -l
sleep 10
echo "df -h geral"
df -h
sleep 10
echo "du na pasta de video"
du -h --max-depth=1 /media/pi/PE32GB/Videos/

