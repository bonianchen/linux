#!/bin/sh
#curl -L -o google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb
curl -L -o /tmp/google-chrome-beta_amd64.deb https://dl.google.com/linux/direct/google-chrome-beta_amd64.deb
sudo dpkg -i /tmp/google-chrome-beta_amd64.deb
