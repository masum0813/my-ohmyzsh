#!/bin/bash -e
export VagrantWD=/vagrant


eval ${VagrantWD}/provision/install-zsh.sh
eval ${VagrantWD}/provision/install-other-tools.sh