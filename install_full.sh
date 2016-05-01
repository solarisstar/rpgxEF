#!/bin/bash
# This script pulls the git repository and sets up all the dependencies for RPG-X EF development
# on a brand new Ubuntu machine. Please let solarisstar / Telex Ferra know if it isn't working.

if [ $(whoami) != 'root' ];
	then
	echo "Please run this script as root:"
	echo "sudo ./install.sh"
	exit -1
fi

# Pull the git repository, put it in a Projects folder in the users home directory
cd ~ || exit -1
mkdir -p Projects
git clone https://github.com/solarisstar/rpgxEF.git
cd ~/rpgxEF || exit -1

# Install all development dependencies
./install_deps.sh