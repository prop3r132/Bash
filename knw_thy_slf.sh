!#bin/bash #/etc/bash will only be added on chromebook.

######################################################
# Script name: knw_thy_slf.sh		             #
#						     #
# This program will be an Interactive way of knowing #
# your computer by prompting user and showing        #
# the results on each line.                          #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Author: Rahat                                      #
# Creation Date: 06/13/2024                          #
#####################################################


# Function to display a menu
display_menu() {
    echo "Welcome, ($name),to this wonderful prompt!"
    echo -e "This little program will walk you \nthorough prompt styled inputs where you will enter \nyour choices and get the systems reports at end!"
    echo "I hope you enjoy :D"

    echo -e "Please select an option from below to start: \n"
    echo "1. System Information: "
    echo "1.a. Name of your running operating system: "
    echo "1.a. Name of your running operating system: "



    echo "2. Create a new folder"
    echo "3. Exit"
    read -p "Enter your choice: " choice
}

# Function to display system information
show_system_info() {
    echo "System Information:"
    echo "Operating System: $(uname -s)"
    echo "Kernel Version: $(uname -r)"
    Architect=$(uname -m)
    if [ $Architect=="x86_64" ]; then
	echo "Your machine is 64 bit, Nice!!"
    else
	echo "This machine still runs on 32bit, old as heck!"
    fi
    echo "Hostname: $(hostname)"
}

# Function to create a new folder
create_folder() {
    read -p "Enter the folder name: " folder_name
    mkdir "$folder_name"
    echo "Folder '$folder_name' created successfully."
}

# Get the user's name
read -p "Please enter your name: " name

# Main loop
while true; do
    display_menu
    case "$choice" in
        1)
            show_system_info
            ;;
        2)
            create_folder
            ;;
        3)
            echo "Goodbye, $name!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done
