#! /bin/sh

sudo apt update -y 
sudo apt install openjdk-11-jdk -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install maven
sudo apt install jenkins -y
sudo systemctl start jenkins
echo 'clearing screen...' && sleep 5
clear
echo 'Jenkins is Installed'
echo 'This is the Default password Now :' $(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
