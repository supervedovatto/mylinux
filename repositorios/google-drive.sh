#!bin/bash
#http://www.diolinux.com.br/2015/08/google-drive-para-ubuntu-download.html
sudo add-apt-repository ppa:thefanclub/grive-tools -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt-get update
sudo apt-get install grive grive-tools -y
echo "GRIVE-TOOLS INSTALADO"
