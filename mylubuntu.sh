#!/bin/bash
sudo apt-get purge gnome-games-data -y
sudo apt-get purge gnome-games-extra-data -y
sudo apt-get purge aisleriot -y
sudo apt-get purge pidgin -y
sudo apt-get purge sylpheed -y
sudo apt-get purge evolution -y
sudo apt-get purge tomboy -y
sudo apt-get purge iceweasel -y
sudo apt-get purge abiword -y
sudo apt-get purge gnumeric -y
sudo apt-get purge emphaty -y
sudo apt-get purge zeitgeist-core -y
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim-? -y
sudo apt-get install backup-manager -y
sudo apt-get install rsync -y
sudo apt-get install chromium-browser -y
sudo apt-get install rar -y
sudo apt-get install flashplugin-nonfree -y
sudo apt-get install octave3.2 -y
sudo apt-get install qtoctave -y
sudo apt-get install gimp -y
sudo apt-get install vlc -y
sudo apt-get install maxima -y
sudo apt-get install geogebra -y
sudo apt-get install ttf-mscorefonts-installer -y
#sudo apt-get install grsync -y
sudo apt-get install calibre -y
sudo apt-get install texlive texlive-latex3 texlive-omega texlive-plain-extra texlive-publishers -y
sudo apt-get install abntex -y
#sudo apt-get install texlive-latex-extra -y
#sudo apt-get install texlive-latex-recommended -y
sudo apt-get install latexdraw -y
sudo apt-get install biblatex -y
sudo apt-get install arandr -y
#sudo apt-get install rhythmbox -y
sudo apt-get install writer2latex -y
sudo apt-get install latex-beamer -y
sudo apt-get install libreoffice -y
sudo apt-get install libreoffice-l10n-pt-br  -y
sudo apt-get install vim-latexsuite -y
sudo apt-get install texstudio -y
#sudo apt-get install preview-latex-style
#sudo apt-get install bluefish -y
#sudo apt-get install audacious -y
#sudo apt-get install bleachbit -y
#sudo apt-get install meld -y
#sudo apt-get install googleearth -y
#sudo apt-get install pspp -y
sudo apt-get install wxmaxima -y
sudo apt-get install mesa-utils -y
#sudo apt-get install freemat -y
#sudo apt-get install scilab -y
sudo apt-get install apache2 php5 libapache2-mod-php5 mysql-server -y
sudo apt-get install libapache2-mod-auth-mysql php5-mysql phpmyadmin -y
#sudo apt-get install ogmrip -y
sudo apt-get install lyx -y
sudo apt-get install inkscape -y
sudo apt-get install artha -y
#sudo apt-get install planner-? -y
#sudo apt-get install ubuntu-restricted-? -y
sudo apt-get install qtikz -y
sudo apt-get install gparted -y
sudo apt-get install libcurl4-openssl-dev -y
sudo apt-get install libxml2-dev -y
#sudo apt-get install gnucash -y
#sudo apt-get install fpc -y
sudo apt-get install wine -y
sudo apt-get install g++ -y
sudo apt-get install python2.7 -y
sudo apt-get install python2.7-? -y
sudo apt-get install idle -y
sudo apt-get install idle-python2.7 -y
sudo apt-get install default-jre -y
sudo apt-get install curl -y
sudo apt-get install python-pip -y
sudo apt-get install jabref -y
sudo apt-get install kmymoney -y
sudo apt-get install okular -y
sudo apt-get install p7zip p7zip-full p7zip-rar lzma lzma-dev -y
sudo apt-get install preload -y
sudo apt-get install bum -y #Desabilita processos e aplicações descenessárias
sudo apt-get install codeblocks codeblocks-common codeblocks-dbg -y
sudo apt-get install numlockx -y #Permite que a tecla numlock seja ativada durante a inicialização
sudo apt-get install libgsl0ldbl -y
sudo apt-add-repository ppa:xorg-edgers/ppa #Repositótio dos drivers GeForce
sudo apt-add-repository ppa:yannubuntu/boot-repair #Repositótio do Pacote de Reparo do Boot
sudo apt-get update -y
sudo apt-get install nvidia-current nvidia-settings nvidia-current-updates -y
sudo apt-get install boor-repair -y && boot-repair
sudo bash config.sh
cd ../repositorios/
bash R-base.sh
bash dropbox.sh
#Scripts para instalação do Java no Debian
#bash java7.sh
bash java8.sh
