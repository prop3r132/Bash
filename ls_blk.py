
######################################################
# Script name: ls_blk.py                             #
#						                                         #
# This program will be an Interactive way of knowing #
# your computer by prompting user and showing        #
# the results on each line.                          #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Author: Rahat                                      #
# Creation Date: 07/04/2024                          #
######################################################
#!usr/bin/python3

import os
import subprocess

choice_lst = ['UUID','NAME','SIZE','FSTYPE','MODEL','PARTTYPENAME','MOUNTPOINTS']

while True:
    lsblk_colm_optns = input('\033[1;4;36;47mEnter the \
options from listed below: \033[0m \n \
\033[1;4;33;47mUUID\033[0m \n \
\033[1;34;47mNAME\033[0m\n \
\033[1;4;35;47mSIZE\033[0m\n \
\033[1;36;47mFSTYPE\033[0m\n \
\033[1;31;48mMODEL\033[0m\n \
\033[1;31;48mPARTTYPENAME\033[0m\n \
MOUNTPOINTS\n\033[0m or "q" to quit the choice menu: ')

    if lsblk_colm_optns.lower()=='q':
        break
    if lsblk_colm_optns.upper() not in choice_lst:
        print("Invalid choice,\n \
        plese pick one from the given options!")
        continue

    bash_cmd = ["lsblk", "-o", lsblk_colm_optns.upper()]

    result = subprocess.run(bash_cmd, capture_output=True, text=True)
    output = result.stdout
    
    if result.stderr:
        print ("Error while executing, please start again.", result.stderr)
