#!/bin/bash

sed -i 's/#UseDNS yes/UseDNS no/g' /etc/ssh/sshd_config

mkdir /media/cdrom
mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /media/cdrom
cd /media/cdrom
./VBoxLinuxAdditions.run
