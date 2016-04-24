#!/bin/sh
# cron script for backup-manager
# Versão:13 Março 2016
# RSYNC=$( rsync --checksum --archive --delete --force --cvs-exclude ) #Parâmetros do Rsync
# RsyncOptions=$( --checksum --archive --delete --force --cvs-exclude ) #Parâmetros do Rsync
# RSYNC=$( rsync ) #Parâmetros do Rsync

source /home/supervedovatto/Documents/Programas/Shell/config/mymaindirs.sh

if [ "$Release" == "jessie" ]; then
    rsync --verbose --checksum --archive --delete --force --cvs-exclude $Documents/ /windows/Documents\ and\ Settings/thiag/Documents/
    # $(RSYNC) $DOCUMENTS /windows/Documents\ and\ Settings/thiag/Documents
fi

if [ "$Release" == "trusty" ]; then
    /usr/sbin/backup-manager -c $config/backup-manager-daily-local.conf
    rsync --checksum --archive --delete --force --cvs-exclude $Documents $DROPBOX
    rsync --checksum --archive --delete --force --cvs-exclude $Documents $DELL
fi

