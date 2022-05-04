#!/bin/bash

#
# Copyright (C) Mahmoud Mohamed (Ozil)  <https://github.com/mmsaeed509>
# Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
#

#
# you can run script with 2 arguments (your commit comment)
# ./push.sh -m "yourCommit"
#

# a simple script to push your commits to GitHub #

echo -e "\e[0;35m############################# \e[0m"
echo -e "\e[0;35m#      Git Push Script      # \e[0m"
echo -e "\e[0;35m############################# \e[0m"

# get branch name (e.g master, main, etc... ) #
Branch=$(git branch --show-current) 

# get new updates if it founded #
echo "Updating Repo"
git pull 

echo "Adding new changes to the repo"
git add --all .

if [ "$1" == "-m" ];
then
    # commit changes#
    git commit -m "$2"
else
    # read commit comment from user #
    echo "Write your commit comment! :- "
    read yourCommit

    # commit changes#
    git commit -m "$yourCommit"
fi

# push to repo #
git push -u origin $Branch

echo -e "\e[0;35m########################### \e[0m"
echo -e "\e[0;35m#      Git Push Done      # \e[0m"
echo -e "\e[0;35m########################### \e[0m"