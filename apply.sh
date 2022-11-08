#!/bin/bash

clear
sleep 1s

# Colors:
red='\033[1;91m'
green='\033[1;92m'
yellow='\033[1;93m'
blue='\033[1;94m'
pink='\033[1;95m'
cyan='\033[1;96m'
reset='\033[0m'   

colors_dir='/data/data/com.termux/files/home/.termux'
my_dir='/data/data/com.termux/files/home/Termux-Colors'

echo -e "1. Dark"
echo -e "2. Light"

read -p "Choose An Option:" opt
if [ $opt == '1' ]; then
   echo -e "$pink[*] Applying colors..."
   sleep 1s
   cd $colors_dir
   rm -rf colors.properties
   cd $my_dir
   cp dark1-colors.properties $colors_dir
   cd $colors_dir
   mv dark1-colors.properties colors.properties
   echo "[*] Applying finish..."
   echo "[*] Reloading..."
   sleep 1s
   termux-reload-settings
else if [ $opt == '2' ]; then
   echo -e "$pink[*] Applying colors..."
   sleep 1s
   cd $colors_dir
   rm -rf colors.properties
   cd $my_dir
   cp light1-colors.properties $colors_dir
   cd $colors_dir
   mv light1-colors.properties colors.properties
   echo "[*] Applying finish..."
   echo "[*] Reloading..."
   sleep 1s
   termux-reload-settings
   sleep 1s
   clear
else
   echo "Quiting!"
   exit 1
fi
fi