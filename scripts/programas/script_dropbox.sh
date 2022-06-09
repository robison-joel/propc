#!/bin/bash -x
#
#	DROPBOX
#
sudo chmod 777 dropbox_2020.03.04_amd64.deb 
#
sudo dpkg -i dropbox_2020.03.04_amd64.deb
#
sudo apt install -f
#
