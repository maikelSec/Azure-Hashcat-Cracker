#!/bin/bash
# Hashcat GPU cracker for Microsoft Azure
# Script by MaikelSEC
echo -e "\e[31;43m***** Installing Drivers and Prerequisites *****\e[0m"
sudo apt-get install software-properties-common gcc make -y
sudo apt-get update && apt-get install p7zip-full
sudo echo 'blacklist nouveau' >> /etc/modprobe.d/blacklist.conf
sudo echo 'options nouveau modeset=0' >> /etc/modprobe.d/b
wget https://download.nvidia.com/XFree86/Linux-x86_64/440.82/NVIDIA-Linux-x86_64-440.82.run
sudo chmod +x NVIDIA-Linux-x86_64-440.82.run
sudo ./NVIDIA-Linux-x86_64-440.82.run --accept-license --no-questions --no-install-compat32-libs
wget https://hashcat.net/files/hashcat-5.1.0.7z
7z x hashcat-5.1.0.7z
echo -e "\e[31;43m***** Congratulations installation succesfull: *****\e[0m"
reboot 0
echo -e "\e[31;43m***** See you later ! *****\e[0m"



