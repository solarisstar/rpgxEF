#!/bin/bash
# This script should be able to set up all dependencies for rpgxEF development
# on a brand new Ubuntu machine. Please let solarisstar / Telex Ferra know if it isn't working.

if [ $(whoami) != 'root' ];
	then
	echo "Please run this script as root:"
	echo "sudo ./install.sh"
	exit -1
fi

# Force yes on install for all these packages
apt-get install -y mesa-common-dev
apt-get install -y libglu1-mesa-dev
apt-get install -y libmad0-dev
apt-get install -y libsdl1.2-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev
apt-get install -y libogg-dev
apt-get install -y mingw-w64

echo "You should now be setup to run the build scripts for RPG-X."
echo "Post on our gitter: https://gitter.im/solarisstar/rpgxEF or contact solarisstar / Telex Ferra if you need any assistance."
echo "Please reboot your machine."
