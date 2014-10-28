#!/bin/bash -eux

# Install some essential packages
yum -y install vlan bridge-utils lsof lvm2 ntp ntpdate tcpdump vim fping
