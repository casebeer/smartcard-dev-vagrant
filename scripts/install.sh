#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
function quietly_install {
	aptitude install -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" $@
}

# "official" GP PPAs... don't work
#add-apt-repository ppa:k-o-/globalplatformsnapshots -y
apt-add-repository ppa:mjeanson/sc -y

aptitude update -q

quietly_install unzip
quietly_install openjdk-7-jdk ant
quietly_install libpcsclite1 pcscd pcsc-tools
quietly_install opensc 
quietly_install libglobalplatform6 gpshell 
#quietly_install libgppcscconnectionplugin1
quietly_install gnupg2 git
# gpg2's smartcard daemon is in gpgsm <= 12.04 and in scdaemon >= 13.04
quietly_install gpgsm
#quietly_install scdaemon

quietly_install python-pyscard

