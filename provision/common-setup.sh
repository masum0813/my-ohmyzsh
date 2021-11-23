#!/bin/bash -e
TEMP_DIR=$(mktemp -d)

export INVENTORY_FOLDER=${TEMP_DIR}/inventory


# cleanup after termination
cleanup() {
  rm -rf ${TEMP_DIR}
  rm -rf /tmp/id_rsa
}


# create inventories folder
mkdir ${INVENTORY_FOLDER}

## copy the ansible stuff under the temp directory
### copy group_vars, etc folders
cp -R ${VagrantWD}/inventories/* ${INVENTORY_FOLDER}/
### copy inventory.ini file
cp ${VagrantWD}/inventories/inventory.ini ${INVENTORY_FOLDER}/
### copy ansible.cfg file
cp ${VagrantWD}/inventories/ansible.cfg ${INVENTORY_FOLDER}/
### copy private key into the temp folder
cp ${VagrantWD}/keys/vagrant_id_rsa /tmp/id_rsa
chmod 600 /tmp/id_rsa

export ANSIBLE_CONFIG=${INVENTORY_FOLDER}/ansible.cfg
