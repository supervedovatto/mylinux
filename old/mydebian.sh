#!/bin/bash
#cat /home/supervedovatto/Documents/Programas/Shell/bin/bashrc_appends >> ~/.bashrc
source /home/supervedovatto/Documents/Programas/Shell/bin/bashrc_appends.sh
bash $bin/mylinux-common-packages.sh

sudo bash /home/supervedovatto/Documents/Programas/Shell/bin/config.sh

#Necessário para que o debian possa reconhecer o comando add-apt-repository 
#http://unix.stackexchange.com/questions/45879/how-to-add-repository-from-shell-in-debian
sudo apt-get install software-properties-common

bash $repositorios/google-chrome.sh
bash $repositorios/R-base-debian.sh
bash $repositorios/dropbox.sh
bash $repositorios/mega.sh
bash $repositorios/google-drive.sh
#Scripts para instalação do Java 8
bash $repositorios/java8.sh
bash $repositorios/others-common-packages.sh
bash $repositorios/others.sh
sudo apt-get autoremove -y
figlet Fim da instalação						
