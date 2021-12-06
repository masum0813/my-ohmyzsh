#!/bin/bash -e

USERNAME=vagrant

#Create vgrant folder
echo "Creating /vagrant folder..."
mkdir /vagrant
chown -f $USERNAME:$USERNAME /vagrant/
ls -lah /vagrant

#Copy files to /vagrant folder
