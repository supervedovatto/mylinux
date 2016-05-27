#!/bin/sh
# cron script for backup-manager
# Versão:13 Março 2016
# RSYNC=$( rsync --checksum --archive --delete --force --cvs-exclude ) #Parâmetros do Rsync
# RsyncOptions=$( --checksum --archive --delete --force --cvs-exclude ) #Parâmetros do Rsync
# RSYNC=$( rsync ) #Parâmetros do Rsync

source /home/supervedovatto/Documents/Programas/Shell/config/myvariables.sh

test -x /usr/sbin/backup-manager || exit 0

if [ "$Release" == "trusty" ] || [ "$Release" == "xenial" ]; then
    rsync --checksum --chmod=777 --delete --force --recursive $egnh/ $SharedMEGA/Thiago_para_Walmir/EGNH/
    cp $Artigos/bibliografiageral.bib $SharedMEGA/Thiago_para_Walmir/EGNH/bibliografiageral.bib
    /usr/sbin/backup-manager -c $config/backup_systems/bm_kompahat.conf

if [ "$Release" == "jessie" ]; then
	/usr/sbin/backup-manager -c $config/backup_systems/bm_komaine.conf
    rsync --checksum --archive --delete --force --cvs-exclude $Documents $DROPBOX
    rsync --checksum --archive --delete --force --cvs-exclude $Documents $DELL
fi

