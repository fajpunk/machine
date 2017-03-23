#!/bin/bash
set -ex

SRC_DIR="$HOME/src"
if [ ! -d "$SRC_DIR" ]; then
  mkdir $SRC_DIR
fi

# Bootstrap ansible
sudo dnf install -y redhat-rpm-config
sudo dnf install -y python-devel
sudo dnf install -y openssl-devel
sudo dnf install -y python2-dnf
sudo pip install ansible==2.2.1.0

cd ansible-config && ansible-playbook --ask-sudo-pass machine_playbook.yml
