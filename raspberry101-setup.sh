#!/bin/bash

# Script created by Alfredo Rius

# This script sets up raspbian to be used by the tutorial Raspberry Pi 101 http://behuns.com/howblog/taxonomy/term/5

if [ "$(id -u)" != "0" ]; then
   echo "Error: Permission Denied" 1>&2
   echo "Are you root?"
   exit 1
fi


# Updating and installing dependencies

apt-get update
apt-get install python-pycurl python-dev python-setuptools
easy_install rpi.gpio
apt-get install apache2
apt-get install php5


# Setting up a confortable system
chown -R pi:pi /var/www
ln -s /var/www htdocs
