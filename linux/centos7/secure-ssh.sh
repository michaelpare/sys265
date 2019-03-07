#!/bin/bash
#creates a new ssh user called $1
#adds a public key to that users authorized keys file
#removes ability for root login
sudo useradd sys265
sudo mkdir /home/sys265/.ssh
sudo cp /home/michaelpare/scripts/linux/public-keys/sys265.pub /home/sys265/.ssh/authorized_keys
sudo chmod 700 /home/sys265/.ssh
sudo chmod 600 /home/sys265/.ssh/authorized_keys
sudo chown -R sys265:sys265 /home/sys265/.ssh
