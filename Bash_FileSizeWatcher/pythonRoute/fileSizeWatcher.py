from os import system
import curses, subprocess
from curses import wrapper
from time import sleep


stdscr = curses.initscr()
curses.noecho()
curses.cbreak()

def c (mainstdscr: 'curses._CursesWindow') -> int:
    return 0
def main() -> int:
    return curses.wrapper(c_main, arg)
