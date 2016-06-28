#!/bin/bash
source /home/supervedovatto/Documents/Programas/Shell/config/myvariables.sh
if [ "$Release" == "trusty" ] || [ "$Release" == "freya" ]; then
	echo "deb http://ppa.launchpad.net/staticfloat/juliareleases/ubuntu trusty main" | tee -a /etc/apt/sources.list
	echo "deb-src http://ppa.launchpad.net/staticfloat/juliareleases/ubuntu trusty main"  | tee -a /etc/apt/sources.list
fi
#if [ "$Release" == "xenial" ]; then
	#echo "deb http://cran.cnr.berkeley.edu/bin/linux/ubuntu/ xenial/" | tee -a /etc/apt/sources.list
	#echo "deb-src http://cran.cnr.berkeley.edu/bin/linux/ubuntu/ xenial/"  | tee -a /etc/apt/sources.list
#fi
#if [ "$Release" == "jessie" ]; then
	#echo "deb http://cran.cnr.berkeley.edu/bin/linux/debian jessie-cran3/" | tee -a /etc/apt/sources.list
	#echo "deb-src http://cran.cnr.berkeley.edu/bin/linux/debian jessie-cran3/"  | tee -a /etc/apt/sources.list
#fi
gpg --keyserver pgp.mit.edu --recv-key 3D3D3ACC
gpg -a --export 3D3D3ACC > $Shell/juliappa.asc
sudo apt-key add $Shell/juliappa.asc
sudo apt-get update
echo "Julia INSTALADO"
