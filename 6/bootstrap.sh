#!/bin/sh -e
export DEBIAN_FRONTEND=noninteractive

PROVISIONED_ON=/etc/vm_provision_on_timestamp
if [ -f "$PROVISIONED_ON" ]
then
  echo "VM was already provisioned at: $(cat $PROVISIONED_ON)"
  echo "To run system updates manually login via 'vagrant ssh' and run 'apt-get update && apt-get upgrade'"
  echo ""
  exit
fi

# Update package list and upgrade all packages
apt-get update
apt-get -y upgrade

apt-get -y install "python3" "python3-pip"

# Install python3 package
pip3 install -r requirements.txt 