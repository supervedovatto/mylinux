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
TeoAss=$UFPE/TeoriaAssintótica
ArtTes=$UFPE/ArtigosTese

#Diretórios de nível 4
config=$Shell/config
myscripts=$Shell/myscripts
egnh=$ArtTes/EGNadarajahHaghighi

#Diretórios de nível 5
BackupManagerNewFiles=$config/backup_systems/bm_config
repositorios=$config/repositorios

# export programas=/home/supervedovatto/Documents/Programas/Shell
# export repositorios=/home/supervedovatto/Documents/Programas/Shell/repositorios
# export config=/home/supervedovatto/Documents/Programas/Shell/config
# export bin=/home/supervedovatto/Documents/Programas/Shell/bin
# export MATHEMATICA_USERBASE=/home/supervedovatto/Documents/Programas/Mathematica
# export MATHEMATICA_BASE=/home/supervedovatto/Documents/Programas/Mathematica

if [ "$HOSTNAME" == "komaine" ]; then
    
    DROPBOX=$MyUSER/Dropbox
    CALIBRE=$MyUSER/Dropbox/Calibre
	VEDODISK=/media/supervedovatto/VEDODISK

fi

if [ "$HOSTNAME" == "kompahat" ]; then

    DROPBOX=/media/supervedovatto/DELL/Dropbox
    CALIBRE=$MyUSER/Calibre
    DELL=/media/supervedovatto/DELL/Backup
	VEDODISK=/media/supervedovatto/VEDODISK

fi

# Outros variáveis
Release=$(lsb_release -sc) #Identifica a versão do sistema operacional
