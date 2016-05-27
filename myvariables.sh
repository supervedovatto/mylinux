#!/bin/bash - 
#===============================================================================
#
#          FILE: mymaindirs.sh
# 
#         USAGE: ./mymaindirs.sh 
# 
#   DESCRIPTION: Relação dos principais diretórios usados no sistema
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: supervedovatto
#  ORGANIZATION: 
#       CREATED: 31-03-2016 14:52
#      REVISION:  ---
#===============================================================================

# set -o nounset                              # Treat unset variables as an error
MyUSER=/home/supervedovatto

#Outros Diretórios
#Diretórios de nível 1
Documents=$MyUSER/Documents
Pictures=$MyUSER/Pictures
SharedMEGA=$MyUSER/SharedMEGA

#Diretórios de nível 2
Artigos=$Documents/Artigos
Programas=$Documents/Programas
UFPE=$Documents/UFPE

#Diretórios de nível 3
AnaMul=$UFPE/AnáliseMultivariada
AnaSob=$UFPE/AnáliseSobrevivência
Learning=$Programas/Learning
ModReg=$UFPE/ModelosRegressão
Shell=$Programas/Shell
Vim=$Programas/Vim
TeoAss=$UFPE/TeoriaAssintótica
MeuArt=$UFPE/MeusArtigos

#Diretórios de nível 4
config=$Shell/config
myscripts=$Shell/myscripts
egnh=$MeuArt/EGNadarajahHaghighi
CR=$MeuArt/ProjetoCR
projeto1=$AnaMul/Projeto1
projeto2=$AnaMul/Projeto2
projeto3=$AnaMul/Projeto3

#Diretórios de nível 5
BackupManagerNewFiles=$config/backup_systems/bm_config
ECR=$CR/ECR
repositorios=$config/repositorios

# export programas=/home/supervedovatto/Documents/Programas/Shell
# export repositorios=/home/supervedovatto/Documents/Programas/Shell/repositorios
# export config=/home/supervedovatto/Documents/Programas/Shell/config
# export bin=/home/supervedovatto/Documents/Programas/Shell/bin
# export MATHEMATICA_USERBASE=/home/supervedovatto/Documents/Programas/Mathematica
# export MATHEMATICA_BASE=/home/supervedovatto/Documents/Programas/Mathematica

VEDODISK=/media/supervedovatto/VEDODISK

if [ "$HOSTNAME" == "kompahat" ]; then
    
    Dropbox=$MyUSER/Dropbox
    GoogleDrive='$MyUSER/Google\ Drive'
    CALIBRE=$MyUSER/Dropbox/Calibre

fi

if [ "$HOSTNAME" == "komaine" ]; then

    DELL=/media/supervedovatto/DELL
	SCORPIO=/media/supervedovatto/Scorpio

    CALIBRE=$MyUSER/Calibre
    Dropbox=$DELL/Dropbox
    DELLBackup=$DELL/Backup
    SCORPIOBackup=$SCORPIO/Backup

fi
# Outros variáveis
Release=$(lsb_release -sc) #Identifica a versão do sistema operacional
