#!/bin/bash - 
#===============================================================================
#
#          FILE: bash_config.sh
# 
#         USAGE: ./bash_config.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 03-04-2016 21:48
#      REVISION:  ---
#===============================================================================

# set -o nounset                              # Treat unset variables as an error
#Diretório temporário para armazenar as configurações pessoais do bash durante a instalação

source /home/supervedovatto/Documents/Programas/Shell/config/myvariables.sh

bash gitcofig.sh

bash_config=/tmp/bash_config
if [ -d "$bash_config" ]; then
    rm -rf $bash_config
fi
git clone https://supervedovatto@bitbucket.org/supervedovatto/bash_config.git $bash_config
chown -R supervedovatto $bash_config

# Remove os arquivos de configuração do bash
rm -rf $MyUSER/.git
# rm $MyUSER/.bash_aliases
# rm $MyUSER/.bashrc
# rm $MyUSER/.gitignore

# Copia os novos arquivos de configuração do bash
cp -Ru $bash_config/* $MyUSER #atualiza todos os arquivos não ocultos
cp -Ru $bash_config/.[a-zA-Z0-9]* $MyUSER #atualiza todos os arquivos ocultos
# cp $bash_config/.bashrc $MyUSER/.bashrc
# cp $bash_config/.bash_aliases $MyUSER/.bash_aliases
# cp $bash_config/.gitignore $MyUSER/.gitignore
git init $MyUSER
chown -R supervedovatto $MyUSER/.git

cd $MyUSER
# Using https protocol
# git remote add origin https://bitbucket.org/supervedovatto/bash_config.git
# Using ssh protocol
git remote add origin ssh://git@bitbucket.org/supervedovatto/bash-config.git
git config credential.helper store
git pull origin master
