#!/bin/bash
#Remove arquivos menores que 1MB
ps -C aws >/dev/null && echo "`date` - AWS Script is running" >> /var/log/messages || find PATH-DO-VIDEO -type f -size -900k -exec rm -f {} \; 

#Copia arquivos para AWS S3
ps -C aws >/dev/null && echo "`date` - AWS Script is running" >> /var/log/messages || /home/USER/.local/lib/aws/bin/aws s3 mv PATH-DO-VIDEO s3://FOLDER-S3 --recursive
