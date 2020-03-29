#!/bin/bash
#Remove arquivos menores que 1MB
ps -C aws >/dev/null && echo "`date` - AWS Script is running" >> /var/log/messages || find /media/pi/PE32GB/Videos/IC3/ -type f -size -900k -exec rm -f {} \; 

#Copia arquivos para AWS S3
ps -C aws >/dev/null && echo "`date` - AWS Script is running" >> /var/log/messages || /home/pi/.local/lib/aws/bin/aws s3 mv /media/pi/PE32GB/Videos/ s3://cam-mibo --recursive
