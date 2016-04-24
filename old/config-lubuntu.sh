#!/bin/bash
#O primeiro comando inclui a pastados onde se localizam meus scripts pessois como uma das pastas onde as shell irão procurar por comandos
CONFIGURACOES=$HOME/Documents/Programas/Shell/config

####CONFIGURAÇÕES PARA TRABALHAR COM MAIS DE UMA JANELA NO LUBUNTU###################
#cp $CONFIGURACOES/dual-samsung.sh $HOME/.screenlayout/dual-samsung.sh
#cp $CONFIGURACOES/dual-samsung-fullHD.sh $HOME/.screenlayout/dual-samsung-fullHD.sh
#cp $CONFIGURACOES/single.sh $HOME/.screenlayout/single.sh
#cp $CONFIGURACOES/dual-samsung-fullHD.sh $HOME/.config/autostart/monitores.sh
#cp $CONFIGURACOES/dual-samsung-fullHD.sh $HOME/.config/lxsession/Lubuntu/monitores.sh
######################################################################################

####ATALHOS NO LUBUNTU################################################################
#cp $CONFIGURACOES/lxde-rc.xml $HOME/.config/openbox/lxde-rc.xml
#cp $CONFIGURACOES/lxde-rc.xml $HOME/.config/openbox/lubuntu-rc.xml
######################################################################################

####OUTRAS CONFIGURAÇÕES PAR O LUBUNTU################################################
#cp $CONFIGURACOES/lxdm.conf /etc/xdg/lubuntu/lxdm/lxdm.conf
#cp $CONFIGURACOES/lightdm.conf /etc/lightdm/lightdm.conf
######################################################################################

cp $CONFIGURACOES/gvimrc /etc/vim/gvimrc
cp $CONFIGURACOES/vimrc /etc/vim/vimrc
cp $CONFIGURACOES/vividchalk.vim /usr/share/vim/vim74/colors/vividchalk.vim
cp $CONFIGURACOES/Templates $HOME/.vim/c-support/templates/templates 
cp $CONFIGURACOES/backup-schedule-daily.sh /etc/cron.daily/backup-schedule
cp $CONFIGURACOES/backup-schedule-weekly.sh /etc/cron.weekly/backup-schedule
cp -r $CONFIGURACOES/c-support/ $HOME/.vim/
cp $CONFIGURACOES/.bash_aliases $HOME/.bash_aliases
