#!/bin/bash
if [ "$Release" == "trusty" ] || [ "$Release" == "freya" ]; then
	echo "deb http://cran.cnr.berkeley.edu/bin/linux/ubuntu/ trusty/" | tee -a /etc/apt/sources.list
	echo "deb-src http://cran.cnr.berkeley.edu/bin/linux/ubuntu/ trusty/"  | tee -a /etc/apt/sources.list
fi
if [ "$Release" == "xenial" ]; then
	echo "deb http://cran.cnr.berkeley.edu/bin/linux/ubuntu/ xenial/" | tee -a /etc/apt/sources.list
	echo "deb-src http://cran.cnr.berkeley.edu/bin/linux/ubuntu/ xenial/"  | tee -a /etc/apt/sources.list
fi
if [ "$Release" == "jessie" ]; then
	echo "deb http://cran.cnr.berkeley.edu/bin/linux/debian jessie-cran3/" | tee -a /etc/apt/sources.list
	echo "deb-src http://cran.cnr.berkeley.edu/bin/linux/debian jessie-cran3/"  | tee -a /etc/apt/sources.list
fi
gpg --keyserver pgp.mit.edu --recv-key 381BA480
gpg -a --export 381BA480 > jranke_cran.asc
sudo apt-key add jranke_cran.asc
#Rstudio server: https://launchpad.net/~opencpu/+archive/ubuntu/rstudio
#echo "deb http://ppa.launchpad.net/opencpu/rstudio/ubuntu trusty main " | tee -a /etc/apt/souces.list
#echo "deb-src http://ppa.launchpad.net/opencpu/rstudio/ubuntu trusty main " | tee -a /etc/apt/souces.list
# sudo add-apt-repository ppa:opencpu/rstudio
sudo apt-get update
sudo apt-get install libjpeg62 -y
sudo apt-get install r-base -y
sudo apt-get install r-base-? -y
sudo apt-get install r-recommended -y
sudo apt-get install r-cran-? -y
sudo apt-get install libatlas3-base -y #Fornece melhor desempenho nas operações com matrizes no R
sudo apt-get install libopenblas-base -y #Fornece melhor desempenho em operações envolvendo algebra linear no R
Rscript /home/supervedovatto/Documents/Programas/R/Pacotes.r #Instala a lista de pacotes que uso frequentemente no R
echo "R-BASE INSTALADO"
# sudo apt-get install rstudio -y
# echo "RSTUDIO INSTALADO"
