#!/bin/bash

sudo apt-get --yes update

sudo apt-get --yes install nodejs
sudo apt-get --yes install npm

sudo npm cache clean -f
sudo npm install -g n
sudo n stable

sudo npm install -g yo generator-fed