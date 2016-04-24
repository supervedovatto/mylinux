#!/bin/bash
#O primeiro comando inclui a pastados onde se localizam meus scripts pessois como uma das pastas onde as shell irão procurar por comandos
source /home/supervedovatto/Documents/Programas/Shell/config/myvariables.sh

# ATUALIZA BASH
bash $config/bash_config.sh

# ATUALIZA BACKUP MANAGER
bash $config/backup_systems/bm_config/bm_config.sh

# ATUALIZA VIM
bash $config/vim_config.sh

# Essas configurações não foram eficazes
# bash evince_config.sh
