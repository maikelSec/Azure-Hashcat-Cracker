#!/bin/bash
# Hashcat GPU cracker for Microsoft Azure
# Script by MaikelSEC
echo -e "\e[31;43m***** Installing Drivers and Prerequisites *****\e[0m"
sudo apt-get install software-properties-common gcc make -y
sudo apt-get update && apt-get install p7zip-full
sudo echo 'blacklist nouveau' >> /etc/modprobe.d/blacklist.conf
sudo echo 'options nouveau modeset=0' >> /etc/modprobe.d/b
wget http://us.download.nvidia.com/XFree86/Linux-x86_64/384.90/NVIDIA-Linux-x86_64-384.90.run
sudo chmod +x NVIDIA-Linux-x86_64-384.90.run
sudo ./NVIDIA-Linux-x86_64-384.90.run --accept-license --no-questions --no-install-compat32-libs
wget https://hashcat.net/files/hashcat-3.6.0.7z
7z x hashcat-3.6.0.7z
echo -e "\e[31;43m***** Congratulations installation succesfull: *****\e[0m"
reboot 0
echo -e "\e[31;43m***** See you later ! *****\e[0m"



