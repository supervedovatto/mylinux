#!/bin/bash - 
#===============================================================================
#
#          FILE: evince_config.sh
# 
#         USAGE: ./evince_config.sh 
# 
#   DESCRIPTION: Configurações para que o evince tenha suporte para synctex
# http://tex.stackexchange.com/questions/2941/how-to-setup-synctex-with-vim-pdflatex-and-an-open-source-pdf-viewer-under-linu
# 
#       OPTIONS: Também é possível colocar esses arquivos em qualquer um dos diretórios de $PATH
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 02-04-2016 16:17
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

source /home/supervedovatto/Documents/Programas/Shell/config/mymaindirs.sh

if [[ -a /bin/evince ]]; then
	rm /bin/evince
	rm /bin/evince_backward_search
	rm /bin/evince_forward_search
fi
cp $config/EvinceNewFiles/evince /bin/evince
cp $config/EvinceNewFiles/evince_backward_search /bin/evince_backward_search
cp $config/EvinceNewFiles/evince_forward_search /bin/evince_forward_search
chmod +x /bin/evince
chmod +x /bin/evince_backward_search
chmod +x /bin/evince_forward_search
