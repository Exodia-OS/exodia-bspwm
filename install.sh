#!/bin/bash

# move all files to home directory 
mv homeConfig/* ~/

# move all files to .config directory 
mv dotConfig/* ~/.config/

# remove unneeded files
cd .. && rm -rf exodia-bspwm
