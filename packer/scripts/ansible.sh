#!/bin/bash -e

# Upgrade system software.
export ANSIBLE_FORCE_COLOR=true
echo "Updating & Upgrading repos..."
apt-get -y update
#TODO: alttaki comment kaldırılacak
#apt-get -y upgrade

# Install dependencies.
echo "Installing Ansible Repos..."
apt-get -y install software-properties-common
apt-add-repository ppa:ansible/ansible

# Install Ansible.
echo "Installing ansible..."
apt-get -y update
apt-get -y install ansible