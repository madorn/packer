#!/bin/bash -eux

# Update the package list
yum update "kernel-*"

# Reboot with sleep to prevent packer provisioner from running next script before reboot.
reboot
sleep 60
