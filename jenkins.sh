#!/bin/bash

#-f Fail silently (no output at all) on server errors.
#s--silent Silent or quiet mode. Don't show progress meter or error messages.
#-S, --show-error and when used with -s , it will show an error
#-L, --location If the server reports that the requested page has moved to a different location
#A System/software update is typically a release containing enhancements to the current version. 
#An upgrade is a whole new version of software that represents a significant change or major improvement.
#DEB - A deb package (.deb file) is a software package in a specific format designed for Debian-based distributions recognized by the .deb extension. \
#Deb packages allow installing local software on an Ubuntu system.





sudo apt update -y

sudo apt upgrade -y 

sudo apt install openjdk-17-jre -y

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y 
sudo apt-get install jenkins -y
