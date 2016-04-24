#!/bin/bash - 
#===============================================================================
#
#          FILE: crontab_config.sh
# 
#         USAGE: ./crontab_config.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 24/04/2016 20:42
#      REVISION:  ---
#===============================================================================

source /home/supervedovatto/Documents/Programas/Shell/config/myvariables.sh

crontab $config/cronjobs

