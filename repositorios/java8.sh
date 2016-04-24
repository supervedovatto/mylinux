#!/bin/bash
#Important!!! For now, you should continue to use Java 8 because Oracle Java 9 is available as an early access release (it should be released in 2016)! You should only use Oracle Java 9 if you explicitly need it, because it may contain bugs and it might not include the latest security patches! Also, some Java options were removed in JDK9, so you may encounter issues with various Java apps.
#PROCEDIMENTO PARA O DEBIAN
#echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
#echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
#apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
sudo add-apt-repository ppa:webupd8team/java
apt-get update
#The installer requires you to accept the Oracle license before the installation begins. This is only required once. If for some reason you need the installation to be automated, you can run the following command to automatically accept the Oracle license:
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
#apt-get install oracle-java8-installer
#To automatically set up the Java 8 environment variables, you can install the following package:
apt-get install oracle-java8-set-default
exit
#If you've already installed oracle-java6-set-default or oracle-java7-set-default, they will be automatically removed when installing oracle-java8-set-default (and the environment variables will be set for Oracle Java 8 instead).
echo "JAVA 8 INSTALADO"
