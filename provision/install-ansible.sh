#!/bin/bash -eux

echo Installing Ansible...
export ANSIBLE_FORCE_COLOR=true
sudo apt-get update -y && sudo apt-get install -y python3.8-venv python3-pip jq unzip
pip3 -q install ansible==2.10.7