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
#
######################################################################

######################################################################
#-Variables
currentUser="$(whoami)"
directory=""
ncurses=$false
distro=""
isItDebian=$false
somethingElse=$false
dialogInstalled=$false
#####################################################################

#####################################################################
#-Background checks
distro=cat /etc/release | grep "NAME="
#####################################################################



#####################################################################
#-User interaction
clear
printf "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
printf "\nWelcome to File Watcher v1.0"
printf "\nBrought to you by Michael Disieno"
printf "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
sleep 2s && clear
printf "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
printf "\nThis is currently written only for Debian, \nlet me know if you want me "
printf "to change that. \nGive me a second while I check to see if \nyou have "
printf "ncurses installed or if we will \nbe going the bash route."
printf "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sleep 6s
printf "\nChecking if you have ncurses\dialog installed......"
sleep 4s && clear


#if ncurses
if ncurses=$true
then
    printf "It looks like you don't have dialog or ncurses installed, would "
    printf "you like to change that you get the next new UI? (Y/N)"
read input
fi
#if bash
if ncurses=$false
then
    printf "It looks like you don't have dialog or ncurses installed, would "
    printf "you like to change that you get the next new UI? (Y/N)"
read input
fi



#######################################################################
#-Bash Interface
printf "You can use this command as a command or as a script.
        \nHow would you like to run it?
        \n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
echo "Type: (1) for as command, (2) as a script: "
printf ">>>: " && read input
if input==1
    then 
    printf "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    \nCool, I'll help you build the command structure for next time.\n"
    echo "Example: fileSizeWatcher -{options} /{file location}/"
    printf "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"        
    printf "You are currently: $(whoami)\n"
    printf "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
    printf "Who should own the File: (1)You or (2)root?: \n"
    input=0
    printf ">>>: " && read input
    if input=1
    then
        printf "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
        printf "\nAlrightly, we will use: $(whoami)\n
        Next, what file shall we look for?"
        read directory
    fi
    if input=2
    then
        printf "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        printf "\nAlrightly, we will use: root"
        printf "Next, what file shall we look for?:\n"
        printf ">>>: /" read directory
    fi
fi


# File location movement

# Backup?





