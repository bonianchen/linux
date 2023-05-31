#!/bin/sh
sudo apt update -y | cut -d' ' -f1
sudo apt upgrade -y | cut -d' ' -f1
sudo apt install -y mate libasound2 libasound2-plugins alsa-utils alsa-oss pulseaudio pulseaudio-utils
sudo usermod -aG pulse,pulseaccess,audio $USER
sudo systemctl set-default graphical.target &> /dev/null 
