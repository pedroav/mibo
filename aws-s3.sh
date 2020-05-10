#!/bin/bash
#Remover arquivos menores que 900k
ps -C aws >/dev/null && echo "`date` - AWS Script is running" >> /var/log/messages || find $PATH_VIDEO_LOCAL -type f -size -900k -exec rm -f {} \; 

#Copiar todos os arquivos para AWS S3
ps -C aws >/dev/null && echo "`date` - AWS Script is running" >> /var/log/messages || aws s3 sync $PATH_VIDEO_LOCAL $PATH_VIDEO_S3 --delete
