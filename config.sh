#!/bin/bash
#O primeiro comando inclui a pastados onde se localizam meus scripts pessois como uma das pastas onde as shell irão procurar por comandos
source /home/supervedovatto/Documents/Programas/Shell/config/mymaindirs.sh

# ATUALIZA BASH
bash bash_config.sh

# ATUALIZA BACKUP MANAGER
bash backupmanager_config.sh

# ATUALIZA VIM
bash vim_config.sh

# Essas configurações não foram eficazes
# bash evince_config.sh
