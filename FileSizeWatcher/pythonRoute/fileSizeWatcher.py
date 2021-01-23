from os import system
import curses, subprocess
from curses import wrapper
from time import sleep

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


print("Welcome to File Watcher.")
