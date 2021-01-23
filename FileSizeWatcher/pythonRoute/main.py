##############################################
# File Size Watcher
#
# By: Michael Disieno
#
# I wrote this as my VPS continually has full
# storage issues with log files that get too
# large for what they are worth.
#
##############################################
from os import system, name
from time import sleep
import subprocess
import curses

cliOutput = ""
distro = ""
userInput = ""
##############################################
#-Intro
system('clear')
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
print("Welcome to File Size Watcher V1.0")
print("Brought to you by mdisieno")
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
sleep(5)
#system('sleep 2s')
system('clear')
##############################################

#############################################################
#-NCurses or Bash?
print("""This is written for Debian based distributions
at the moment. I will work on writing this for other 
distributions later but at the moment I'm a little bit 
of a Debian fan.""")
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
system('sleep 5s')
print("Let me check really quick if you have ncurses and dialog installed...")
system('sleep 5s')
system('clear')
cliOutput = subprocess.check_output('apt-cache policy dialog | grep "Installed"',shell=True)
if b'none' in cliOutput:
    print("It looks like you don't have ncurses installed.")  
    userInput = input("Would you like me to install it for you?(Y/N):  ") 
    if userInput == 'Y':
        print("Alright, let me take care of that for you.")
        system('sleep 3s')
        print("Switching to bash for the install....")
        system('sleep 3s')
        system('clear')
        
        system('sudo apt install firefox')
    else:
        print("Alrighty, lets default to bash then.")
        system('clear')
        system('bash ./bashFileSizeWatcher.sh')
else:
    print("Woot, looks like its installed")
    print("switching to ncurses now....")
    system('sleep 5s')
##############################################################