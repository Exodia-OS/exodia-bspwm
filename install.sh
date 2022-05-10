#!/bin/bash

#
# Copyright (C) 29-April 2022 Mahmoud Mohamed (Ozil)  <https://github.com/mmsaeed509>
# Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
#

                    #  ------   Step 0   ------  #

# ------ get root ------ #
if [[ $EUID -ne 0 ]]; then
   echo "[*] This script must be run as root"
   exit 1
fi


scrDir=$(pwd)
                    #  ------   Step 1   ------  #


# ------ move all files to home directory ------ #
cp -r "$scrDir"/misc/* ~/
# ------ move all files to home directory ------ #


                    #  ------   Step 2   ------  #


# ------ copying all files to $HOME.config directory ------ #
cp -r "$scrDir"/Config/* ~/.config/
# ------ copying all files to $HOME.config directory ------ #


                    #  ------   Step 3   ------  #

# ------ copying all files to /bin directory ------ #                    
sudo cp -r "$scrDir"/bin/* ~/Public/Temp/BIN/
# ------ copying all files to /bin directory ------ #   



                    #  ------   Final Step   ------  #

# ------ remove unneeded files ------ #
cd "$scrDir" && cd ..
rm -rf exodia-bspwm
# ------ remove unneeded files -----