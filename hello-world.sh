#!/bin/bash

# Variables
option="0"

declare -a menu_options
menu_options=(
    "PascalCase"
    "camelCase"
    "ALL CAPS"
    "all lower"
    "Z̹̐à̖lͭ̿gͧͅö̺́ ͐̑M͈̥ó̯d͖̽ḛ͔!͍͌"
    "Please, make it stop..."
)

# Functions
print_menu () {
    echo 'What interesting choice will you make today?'
    echo 'Possible choices for output:'
    
    for i in "${!menu_options[@]}"; do
        let j=i+1
        echo "[$j]: ${menu_options[$i]}"
    done
}

exit_script(){
    echo "Okay... I thought we were friends... (︶︹︺)"
    exit 0
}

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
    echo -e "\n"
    exit_script
}

# Program
echo 'Welcome... to the AMAZING hello world cli!!!'

while [[ $option != 6 ]]
do
    print_menu
    read -p 'Please choose an option: ' option
    echo
    case $option in
        1)
            echo "Hello World"
        ;;
        2)
            echo "hello World"
        ;;
        3)
            echo "HELLO WORLD"
        ;;
        4)
            echo "hello world"
        ;;
        5)
            echo "Hͬ̄è̺l͖̟l͚̥o͍ͭ ͮ͋Z͂ͦa̬̱l̝ͥg͗̚o͗̆,̒̔ ̦̙H̗̩e̺̍ ͉ͩC̜͚o̺ͭm͉̑e͒͋t͇̑ḥ̣!̠ͤ"
        ;;
        6)
            exit_script
        ;;
        *)
            echo "Not really expected that input, but you do you... hello world!"
        ;;
    esac
    echo
done

