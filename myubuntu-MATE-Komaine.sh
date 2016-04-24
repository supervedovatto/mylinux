#!/bin/bash
programas=/home/supervedovatto/Documents/Programas/Shell
repositorios=/home/supervedovatto/Documents/Programas/Shell/repositorios
config=/home/supervedovatto/Documents/Programas/Shell/config
bin=/home/supervedovatto/Documents/Programas/Shell/bin
sudo apt-get update
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
sudo apt-get purge thunderbird -y
sudo apt-get purge zeitgeist -y
sudo apt-get purge zeitgeist-core -y
sudo apt-get purge zeitgeist-datahub -y
sudo apt-get purge zeitgeist-fts-extension -y
sudo apt-get purge unity-lens-files -y
sudo apt-get upgrade -y
sudo apt-get install vim-? -y
sudo apt-get install git-all -y
sudo bash $config/gitconfig.sh
#git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
sudo apt-get install nautilus -y
sudo apt-get install backup-manager -y
sudo apt-get install rsync -y
#sudo apt-get install chromium-browser -y #Optamos pela instalação do google-chrome por meio de um pacote independente
sudo apt-get install rar -y
sudo apt-get install flashplugin-nonfree -y
sudo apt-get install octave3.2 -y
sudo apt-get install qtoctave -y
sudo apt-get install gimp -y
sudo apt-get install vlc -y
sudo apt-get install maxima -y
sudo apt-get install geogebra -y
#sudo apt-get install ttf-mscorefonts-installer -y
#sudo apt-get install grsync -y
sudo apt-get install texlive-full -y
sudo apt-get install abntex -y
#sudo apt-get install texlive-latex-extra -y
#sudo apt-get install texlive-latex-recommended -y
sudo apt-get install latexdraw -y
sudo apt-get install biblatex texlive-bibtex-extra -y
sudo apt-get install texlive-bibtex-extra biber -y
#sudo apt-get install arandr -y
#sudo apt-get install rhythmbox -y
sudo apt-get install writer2latex -y
sudo apt-get install latex-beamer -y
sudo apt-get install libreoffice -y
sudo apt-get install libreoffice-l10n-pt-br  -y
sudo apt-get install vim-latexsuite -y
#sudo apt-get install texstudio -y #Não deve ser instalado aqui. Instale por wget
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
#sudo apt-get install lyx -y
sudo apt-get install inkscape -y
#sudo apt-get install artha -y
#sudo apt-get install planner-? -y
#sudo apt-get install ubuntu-restricted-? -y
#sudo apt-get install qtikz -y
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
sudo apt-get install calibre -y
sudo apt-get install jabref -y
sudo apt-get install ruby2.0 -y #Necessário para a instalação do plugin bibsync para jabref
sudo gem install bibsync -y #Plugin para jabref // gem é o gerenciador de pacotes do ruby
sudo apt-get install kmymoney -y
#sudo apt-get install okular -y
sudo apt-get install p7zip p7zip-full p7zip-rar lzma lzma-dev -y
sudo apt-get install preload -y
sudo apt-get install bum -y #Desabilita processos e aplicações descenessárias
sudo apt-get install indent -y #Permite padronizar a indentação de códigos escritos em linguagem C
sudo apt-get install gsl-bin -y #Biblioteca com funções matemáticas para a linguagem C
sudo apt-get install codeblocks codeblocks-common codeblocks-dbg -y
#sudo apt-get install numlockx -y #Permite que a tecla numlock seja ativada durante a inicialização
#sudo apt-add-repository ppa:xorg-edgers/ppa -y #Repositótio dos drivers GeForce
sudo apt-add-repository ppa:yannubuntu/boot-repair -y #Repositótio do Pacote de Reparo do Boot
sudo apt-get update -y
#rrent nvidia-settings nvidia-current-updates -y
sudo apt-get install boor-repair -y && boot-repair
#Instalação de Pacotes da linguagem Python
pip install ipython #IDE para python
pip install jedi #autocomplete for python
pip install jupyter #Browser IDE for python
pip install jupyter-themer #Temas para jupyter
sudo bash $bin/config.sh
#cd ../repositorios/
#bash $repositorios/google-chrome.sh
bash $repositorios/R-base.sh
#bash $repositorios/dropbox.sh
#bash $repositorios/mega.sh
#Scripts para instalação do Java 8
bash $repositorios/java8.sh
bash $repositorios/outros-debian.sh
sudo apt-get autoremove -y
#Aplicativo que imprive mensagem de encerramento do algorítmo
sudo apt-get install figlet -y
figlet Fim da instalação
