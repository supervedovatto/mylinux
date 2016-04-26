#!/bin/bash - 
#===============================================================================
#
#          FILE: backupmanager_config.sh
# 
#         USAGE: ./backupmanager_config.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 03-04-2016 22:13
#      REVISION:  ---
#===============================================================================

# set -o nounset                              # Treat unset variables as an error
source /home/supervedovatto/Documents/Programas/Shell/config/myvariables.sh

# Carrega os cronjobs personalizados para o crontab
crontab $config/cronjobs

# CONFIGURAÇÕES PARA QUE O BACKUP-MANAGER FAÇA MAIS DE UM BACKUP AO DIA
# http://v1chak.blogspot.com.br/
# if [[ $HOSTNAME == "komaine" ]]; then
# 	rm /usr/bin/backup-manager-upload
# 	rm /usr/bin/backup-manager-purge
# 	rm /usr/share/backup-manager/actions.sh
# 	rm /usr/share/backup-manager/files.sh
# 	cp $BackupManagerNewFiles/backup-manager-upload /usr/bin/backup-manager-upload
# 	cp $BackupManagerNewFiles/backup-manager-purge /usr/bin/backup-manager-purge
# 	cp $BackupManagerNewFiles/actions.sh /usr/share/backup-manager/actions.sh
# 	cp $BackupManagerNewFiles/files.sh /usr/share/backup-manager/files.sh 
# fi
#
#
