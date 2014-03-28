#!/bin/bash

# Script created by Alfredo Rius

# This is part of the tutorial Raspberry Pi 101 located in http://behuns.com/howblog/taxonomy/term/5

# Check for root
if [ "$(id -u)" != "0" ]; then
   echo "Error: Permission Denied" 1>&2
   echo "Are you root?"
   exit 1
fi

# Check for at least one argument
if [[ -z $1 ]]; then
  echo "Usage:    $ $0 PROJECT_NAME"
  exit 1
fi

PROJECT_NAME=$1

# Setup Dirs
mkdir /home/pi/$PROJECT_NAME
touch /home/pi/$PROJECT_NAME/led.py
chmod +x /home/pi/$PROJECT_NAME/led.py
sudo chown -R pi:pi /home/pi/$PROJECT_NAME
mkdir /var/www/$PROJECT_NAME
touch /var/www/$PROJECT_NAME/index.php
sudo chown -R pi:pi /var/www/$PROJECT_NAME
touch /var/www/$PROJECT_NAME/info.db
sudo chown www-data:www-data /var/www/$PROJECT_NAME/info.db
