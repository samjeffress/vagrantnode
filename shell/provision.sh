#!/bin/bash

apt-get --yes update
apt-get --yes install build-essential git

apt-get --yes install npm
# create symlink for 'node' as 'npm' is looking for 'node', not 'nodejs'
ln -sf /usr/bin/nodejs /usr/bin/node

