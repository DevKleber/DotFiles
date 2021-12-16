#!/bin/bash

sudo apt install qemu-kvm
sudo adduser $USER kvm
grep kvm /etc/group
sudo chown $USER -R /dev/kvm
