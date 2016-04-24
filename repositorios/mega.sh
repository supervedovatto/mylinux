#!/bin/bash
#http://sourcedigit.com/12745-install-official-mega-sync-cloud-storage-ubuntu-14-04-linux-derivatives/
source /home/supervedovatto/Documents/Programas/Shell/config/mymaindirs.sh

if [ "$Release" == "trusty" ] || [ "$Release" == "jessie" ]; then
	sudo add-apt-repository ppa:eugenesan/ppa
	sudo apt-get update
	sudo apt-get install megasync nautilus-megasync
	nautilus -q
fi
if [ "$Release" == "xenial" ]; then
	sudo apt-get install libc-ares2 libcrypto++9v5 -y
	wget https://mega.nz/linux/MEGAsync/xUbuntu_16.04/amd64/megasync-xUbuntu_16.04_amd64.deb  -O /tmp/install-megasync.deb
	sudo dpkg -i /tmp/*.deb
	rm /tmp/*.deb
fi
echo "MEGA SYNC INSTALADO"
