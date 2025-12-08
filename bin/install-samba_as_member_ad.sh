#!/bin/bash

# Install necessary packages
sudo apt-get install realmd samba


# Resolve domain
# unlink /etc/resolv.conf
# nameserver 192.168.0.x
# search pmsbs.local

# Join the AD domain
# sudo realm join -v --membership-software=samba --client-software=winbind  pmsbs.local

# To share folder n samba to a AD group
# sudo chown -R root:"PMSBS\TI" /srv/samba/share
# You don’t actually need to chown the folder to the AD group. Instead, you can leave the folder owned by root and control access via Samba:
# [TI]
#   path = /srv/samba/TI
#   browseable = yes
#   writable = yes
#   valid users = @"PMSBS\TI"
#   create mask = 0660
#   directory mask = 0770
