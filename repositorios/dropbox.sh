#!/bin/bash
#http://www.ubuntuupdates.org/ppa/dropbox
if [ "$Release" == "trusty" ] || [ "$Release" == "freya" ]; then
	sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ trusty main" >> /etc/apt/sources.list.d/dropbox.list'
fi
if [ "$Release" == "xenial" ]; then
	sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ xenial main" >> /etc/apt/sources.list.d/dropbox.list'
fi
if [ "$Release" == "jessie" ]; then
	sudo sh -c 'echo "deb http://linux.dropbox.com/debian/ jessie main" >> /etc/apt/sources.list.d/dropbox.list'
fi
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo apt-get update 
sudo apt-get install dropbox 
echo "DROPBOX INSTALADO"
