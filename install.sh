#!/bin/bash

#
# Copyright (C) 29-April 2022 Mahmoud Mohamed (Ozil)  <https://github.com/mmsaeed509>
# Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
#

scrDir=$(pwd)
                    #  ------   Step 1   ------  #


# ------ move all files to home directory ------ #
mv "$scrDir"/misc/* ~/
# ------ move all files to home directory ------ #


                    #  ------   Step 2   ------  #

# store Directories in this array for Checking if the directories exist in for loop #
Paths=(
    ~/.config/sxhkd
    ~/.config/networkmanager-dmenu
    ~/.config/dunst
    ~/.config/bspwm
    )

# Check if the directories exist #
if [ ! -d "$Paths" ];
then
    # Create a new one if it doesn't exist #
    mkdir -p -- "${Paths[@]}"
fi


# ------ copying all files to $HOME.config directory ------ #
mv -v "$scrDir"/Config/* ~/.config/
# ------ copying all files to $HOME.config directory ------ #


                    #  ------   Final Step   ------  #

# ------ remove unneeded files ------ #
cd "$scrDir" && cd ..
rm -rf exodia-bspwm
# ------ remove unneeded files -----
