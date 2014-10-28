#!/bin/bash -eux

# Turn on ipv4 forwarding
sed -i "s/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g" /etc/sysctl.conf

# Load the settings
sysctl -p /etc/sysctl.conf
