#!/bin/bash - 
#===============================================================================
#
#          FILE: ssh-keygen.sh
# 
#         USAGE: ./ssh-keygen.sh 
# 
#   DESCRIPTION: Este Script ainda não funciona adequadamente
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 27-05-2016 09:34
#      REVISION:  ---
#===============================================================================

# set -o nounset                              # Treat unset variables as an error
# http://stackoverflow.com/questions/8588768/git-push-username-password-how-to-avoid
# https://git-scm.com/book/pt-br/v1/Git-no-Servidor-Gerando-Sua-Chave-P%C3%BAblica-SSH
# https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
cd /home/supervedovatto/.ssh
# Não informe nenhuma passphrase pois isso irá exigir que vc destrave as keyrings sempre que for usar
# bitbucketpassphrase=
# githubpassphrase=
ssh-keygen -t rsa -b 4096 -f bitbucket -C "supervedovatto@hotmail.com" -P $bitbucketpassphrase
sudo chown supervedovatto bitbucket bitbucket.pub
ssh-add /home/supervedovatto/.ssh/bitbucket
ssh-keygen -t rsa -b 4096 -f github -C "supervedovatto@hotmail.com" -P $githubpassphrase
sudo chown supervedovatto github github.pub
ssh-add /home/supervedovatto/.ssh/github
