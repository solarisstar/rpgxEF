# The Last Outpost RPG-X EF Clean-up Project

[![Join the chat at https://gitter.im/solarisstar/rpgxEF](https://badges.gitter.im/solarisstar/rpgxEF.svg)](https://gitter.im/solarisstar/rpgxEF?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
This repository was forked from the UBerGames rpgxEF repository located here: https://github.com/UberGames/rpgxEF.

# Installing Instructions

## For Beginners
* Make sure you are running on a computer or Virtual Machine (VM) with Linux Ubuntu 64-bits (or variants such as Xubuntu).
For more information on how to run a VM under Windows, follow any of these guides (or just google "setting up a virtual machine"): 
  * http://www.wikihow.com/Install-Ubuntu-on-VirtualBox
  * http://www.psychocats.net/ubuntu/virtualbox

We are running a Xubuntu 64-bits install because it is more lightweight so more suitable for running as a VM. You can download a Xubuntu iso image here:
http://cdimages.ubuntu.com/xubuntu/releases/16.04/release/
Then chose the xubuntu-xx.yy-desktop-amd64.iso image (where xx.yy is 16.04 at the time of writing)

* Run your VM
* Download the install_full.sh file or copy its contents into a new .sh file somewhere on your VM
* Open a terminal window in the location where you downloaded the install_full.sh file (For Xubuntu, go to the directory using the File Manager, then right click and select "Open Terminal Here").
* Type: sudo ./install_full.sh
* When prompted for a "root password",. insert the password you chose for your user account while installing Linux on your VM
* The script automatcially downloads the RPG-X EF Repository from GitHub and puts it in /home/<yourusername>/Projects/rpgxef (obviously, <yourusername> is the username of your Linux user account)
* It also automatically downloads all development dependencies needed for building the source code
* In the terminal, navigate to the rpgxef repository directory which was just created: cd /home/<yourusername>/Projects/rpgxef

### Building for Linux
* In the terminal, type: make
* The source code will now be build for Linux 64-bits and the output files will be present in the build/release-linux-x86_64 directory.

### Building for Windows
* To build for windows, run: ./cross-make-mingw.sh (for 32 bits) or ./cross-make-mingw64.sh (for 64-bits) this will produce the required .dll files and .exe files
* Put the .dll and .exe files from the build/ directory into your RPG-X EF install. The easyest way to test this is to get the RPG-X Standard Edition from TLO: http://www.last-outpost.net/rpgx/
and then copying the following files from your VM onto your computer:
  * Copy build/release-mingw32-x64/rpgxEF.x64.exe and build/release-mingw32-x64/renderer_opengl1_x64.dll to the base install directory of RPG-X (where the current .exe is located, overwrite if asked) 
  * Copy build/release-mingw32-x64/rpgxEF/uix64.dll, build/release-mingw32-x64/rpgxEF/qagamex64.dll, build/release-mingw32-x64/rpgxEF/cgamex64.dll to the RPG-X2 directory located in your RPG-X install directory

* Be sure to run the game with the following cvars: +set vm_game 0 +set vm_ui 0 +set vm_cgame 0 +set fs_game RPG-X2
  In order to do this, make a shortcut on your desktop to the rpgxEF.x64.exe, right click it, selecte properties, and in the "Target:" window, it should read something like this: 
  "C:\Program Files\The Last Outpost RPG-X Standard Edition\rpgxEF.x64.exe"
  Append the cvars, so it now reads something like:
  "C:\Program Files\The Last Outpost RPG-X Standard Edition\rpgxEF.x64.exe" +set vm_game 0 +set vm_ui 0 +set vm_cgame 0 +set fs_game RPG-X2
  Then press Apply and OK and start the game via the shortcut

## For Advanced Users
* Git Pull this repository onto a Ubuntu flavoured Linux machine or VM
* Terminal to the repository directory and run: ./install_deps.sh. This will install all development dependencies for running make
* Run make to build for Linux 64 bits, find the output files in the build directory
  * Run ./make-i386.sh for building the Linux 32 bits variant
  * Run ./cross-make-mingw.sh for building the Windows 32 bits variant
  * Run ./cross-make-mingw64.sh for building the Windows 64 bits variant
* Install a fresh copy of the RPG-X Standard Edition from TLO: http://www.last-outpost.net/rpgx/ and put the build files in the correct directory as described below, then run executable file to launch RPG-X EF

  * Copy the following files to the base install directory of RPG-X (where the current binary is located, overwrite if asked): 
    * build/release-PLATFORM-ARCH/rpgxEF.ARCH
    * build/release-PLATFORM-ARCH/renderer_opengl1_ARCH (.so for Linux, .dll for Windows)

  * Copy the following files (.so for Linux, .dll for Windows) to the RPG-X2 directory located in your RPG-X install directory:
    * build/release-PLATFORM-ARCH/rpgxEF/uiARCH, 
    * build/release-PLATFORM-ARCH/rpgxEF/qagameARCH
    * build/release-PLATFORM-ARCH/rpgxEF/cgameARCH

* ~~Be sure to run the game with the following cvars: +set vm_game 0 +set vm_ui 0 +set vm_cgame 0 +set fs_game RPG-X2~~ UPDATE: cvars should no longer be required.

# Contact Information
Contact Telex Ferra or Martin Thompson on www.last-outpost.net/forum for more information about this repository.
