#!/bin/bash -e
export VagrantWD=/vagrant

. ${VagrantWD}/provision/common-setup.sh

ansible-playbook \
--connection=ssh \
--timeout=30 \
${VagrantWD}/playbooks/provision-all.yml