#!/bin/bash -eux

# Turn on ipv4 forwarding
cat <<EOF | sudo tee -a /etc/sysctl.conf
net.ipv4.ip_forward = 1
EOF

# Load the settings
sysctl -p /etc/sysctl.conf
