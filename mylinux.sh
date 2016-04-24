#!/bin/bash
#cat /home/supervedovatto/Documents/Programas/Shell/bin/bashrc_appends >> ~/.bashrc
#source /home/supervedovatto/Documents/Programas/Shell/bin/bashrc_appends.sh
source /home/supervedovatto/Documents/Programas/Shell/config/myvariables.sh
sudo bash $config/mypackages.sh

sudo bash $config/config.sh

#Necessário para que o debian possa reconhecer o comando add-apt-repository 
#http://unix.stackexchange.com/questions/45879/how-to-add-repository-from-shell-in-debian
sudo apt-get install software-properties-common -y

sudo bash $repositorios/google-chrome.sh
sudo bash $repositorios/R-base.sh
sudo bash $repositorios/dropbox.sh
sudo bash $repositorios/mega.sh
sudo bash $repositorios/google-drive.sh
#Scripts para instalação do Java 8
sudo bash $repositorios/java8.sh
sudo bash $repositorios/others-common-packages.sh
sudo bash $repositorios/others.sh
sudo apt-get autoremove -y
figlet Fim da instalação						
