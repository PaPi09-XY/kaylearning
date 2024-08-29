#!/bin/bash

# Update package lists
sudo apt-get update -y

# Install Java SDK 11
sudo apt-get install openjdk-11-jdk -y

# Download and install Jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package lists after adding Jenkins repo
sudo apt-get update -y

# Install Jenkins
sudo apt-get install jenkins -y

# Install Maven Build Tool
sudo apt-get install maven -y

# Start Jenkins and enable it to start on boot
sudo systemctl enable jenkins
sudo systemctl start jenkins
