#!/bin/bash

# Install script for terminal help

cat distributions.txt
echo ""
read -p "Enter which distribution which you use (Enter number):" distribution

if [[ $distribution == "1" ]]
then
    sudo pacman -S --needed cowsay htop unzip neofetch fortune-mod
    echo
    echo "Installed various dependies now you can run the terminal help"
fi

if [[ $distribution == "2" ]]
then
    sudo apt-get install cowsay htop unzip neofetch fortune
    echo
    echo "Installed various dependies now you can run the terminal help"
fi

if [[ $distribution == "3" ]]
then
    sudo yum install dnf cowsay htop unzip epel-release snapd
    sudo dnf install dnf-plugins-core
    sudo dnf copr enable konimex/neofetch
    sudo dnf install neofetch
    sudo systemctl enable --now snapd.socket
    sudo ln -s /var/lib/snapd/snap /snap
    sudo snap install fortune-cm
    echo
    echo "Installed various dependies now you can run the terminal help"
fi
