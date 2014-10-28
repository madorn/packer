#!/bin/bash -eux

# Update the package list
apt-get update

# Upgrade all installed packages incl. kernel and kernel headers
apt-get -y upgrade linux-server linux-headers-server

# Ensure the correct kernel headers are installed
#apt-get -y install linux-headers-$(uname -r)

# Update package index on boot
cat <<EOF > /etc/init/refresh-apt.conf
description "update package index"
start on networking
task
exec /usr/bin/apt-get update
EOF

# Reboot with sleep to prevent packer provisioner from running next script before reboot.
reboot
sleep 60
