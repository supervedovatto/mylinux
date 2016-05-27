#!/bin/bash
sudo apt-get -f install

#ATENÇÃO!!! os links precisam ser atualizados com as distribuições mais recentes dos aplicativos caso necessário

#RStudio
#https://www.rstudio.com/products/rstudio/download/
sudo dpkg -r rstudio
wget https://download1.rstudio.org/rstudio-0.99.689-amd64.deb  -O /tmp/install-rstudio.deb

#Atom
#https://atom.io/
#sudo dpkg -r atom
#wget https://atom.io/download/deb -O /tmp/install-atom.deb

#Ox Edit 7.10
#http://www.doornik.com/download/oxmetrics7/Ox_Console/
#sudo dpkg -r oxcons
#wget http://www.doornik.com/download/oxmetrics7/Ox_Console/oxcons_7.10-0_amd64.deb  -O /tmp/install-oxedit7.deb

#Instala todos os pacotes baixados
sudo dpkg -i /tmp/*.deb

#Remove os pacotes baixados
sudo rm /tmp/*.deb
