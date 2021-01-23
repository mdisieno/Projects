#!/bin/bash
######################################################################
# This provides an ncurses based front in for when the user does not
# include arguments or options.
######################################################################
######################################################################
#-Variables
currentUser="$(whoami)"
directory=""
ncurses=$false
distro=""
none='None'
isItDebian=$false
somethingElse=$false
dialogInstalled=$false
#####################################################################

#####################################################################
#-Background checks
distro=$(cat /etc/os-release | grep "NAME=")
#####################################################################
#####################################################################
#-Function to check if NCurses is installed
function checkIfDialogIsInstalled() {
    printf "\nChecking if you have ncurses\dialog installed......"
    #was original 4s
    sleep 2s && clear
    cliOutput=$(apt-cache policy firefox | grep "Installed")

    if grep -q "$cliOutput" <<< "$none"; then
        echo "Its there"
        ncurses=$false
    fi


    if ncurses=$false; then
        echo "Its not there"
        read -p "Would you like to install it? (Y/N): " $userInput

#!!!!-YOU ARE HERE AT THE MOMENT-!!!!
        if [$userInput == "Y" | [$userInput == "y"];then
            echo "Fart poops"
        fi
    fi


}
#####################################################################
#####################################################################
#-Function for NCurses UI
function ncursesRoute(){
    echo "NCurses Route Initializing"
}  
#####################################################################
#####################################################################
#-Function for Bash UI
function bashRoute(){
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
}
#####################################################################
#-Function if no arguements were provided
function helperScript(){
    clear
    printf "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    printf "\nWelcome to File Watcher Bash v1.0"
    printf "\nBrought to you by Michael Disieno"
    printf "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    sleep 3s && clear
    printf "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    printf "\nThis is currently written only for Debian based distributions, and thus
    certain features will only work with Debian. I will update it later for other
    distributions. "
    printf "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
    checkIfDialogIsInstalled

}
#####################################################################




#####################################################################
#-Check if arguements were provided
if [ $# -eq 0 ]
    then
        echo "Loading...."
        sleep 2s
        helperScript
    else
        clear
fi


#####################################################################
#-User interaction

#sleep 6s



# File location movement

# Backup?





