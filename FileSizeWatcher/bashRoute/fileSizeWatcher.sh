#!/bin/bash
######################################################################
# A simple Bash script, that will watch a file and delete and rebuild
# once it reaches a certain size. I built this primarily for my VPS.
# by Mike Disieno
#
# Rev 1.0 takes in user input for folder and ownership and makes a new
# file in that location with the respective settings needed for that 
# user to access it and modify it. I will likely move this to ncurses 
# later.
######################################################################
# Variables
currentUser="$(whoami)"
directory=""
filename=""
#####################################################################



#####################################################################
# Primary Program
if [ $# -eq 0 ]
    then
        echo "Loading...."
        sleep 2s
        #helperScript
    else
        clear
fi
####################################################################