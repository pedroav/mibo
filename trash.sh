#!/bin/bash
ps -C find >/dev/null && echo "`date` - Find is running" >> /var/log/messages || `find $PATH_VIDEO_LOCAL -type f -atime +1 -delete >> /var/log/messages`
