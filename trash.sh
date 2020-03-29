#!/bin/bash
ps -C find >/dev/null && echo "`date` - Find is running" >> /var/log/messages || `find /media/pi/PE32GB/Videos/ -type f -atime +1 -delete >> /var/log/messages`
