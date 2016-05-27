#!/bin/sh
# cron script for backup-manager
# Versão:13 Março 2016

source /home/supervedovatto/Documents/Programas/Shell/config/myvariables.sh

test -x /usr/sbin/backup-manager || exit 0

if [ "$Release" == "jessie" ]; then
    # rsync --checksum --chmod=777 --delete --force --recursive $egnh/ $SharedMEGA/Thiago_para_Walmir/EGNH/
    # cp $Artigos/bibliografiageral.bib $SharedMEGA/Thiago_para_Walmir/EGNH/bibliografiageral.bib
    # /usr/sbin/backup-manager -c $config/backup_systems/bm_komaine.conf
fi
if [ "$Release" == "trusty" ] || [ "$Release" == "xenial" ]; then
    # rsync --checksum --chmod=777 --delete --force --recursive $egnh/ $SharedMEGA/Thiago_para_Walmir/EGNH/
    # cp $Artigos/bibliografiageral.bib $SharedMEGA/Thiago_para_Walmir/EGNH/bibliografiageral.bib
    # /usr/sbin/backup-manager -c $config/backup_systems/bm_komaine.conf
    # /usr/sbin/backup-manager -c $DOCUMENTS/Programas/Shell/config/backup-manager-daily-dropbox.conf 
    # /usr/sbin/backup-manager -c $DOCUMENTS/Programas/Shell/config/backup-manager-daily-local.conf
    # rsync --checksum --archive --delete --force --cvs-exclude $DOCUMENTS $DROPBOX
    # rsync --checksum --archive --delete --force --cvs-exclude $DOCUMENTS $DELL
fi
