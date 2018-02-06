#!/bin/bash

# update and upgrade

sudo apt-get update -y
sudo apt-get upgrade -y

#install nginx
sudo apt-get install nginx -y

#install nodejs
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install nodejs -y

#install pm2
sudo npm install -g pm2


# set environment variables to connect to database
# sudo rm ~/.bashrc
sudo cp /home/ubuntu/environment/app/env_variables.sh /etc/profile.d/

# set up reverse proxy
sudo cp /home/ubuntu/environment/app/default /etc/nginx/sites-available
sudo cp /home/ubuntu/environment/app/vhost.conf /etc/nginx/sites-available
sudo export DB_HOST=mongodb://192.168.10.151
sudo ln -s /etc/nginx/sites-available/vhost1.conf /etc/nginx/sites-enabled/vhost1.conf

# restarting nginx
# sudo service nginx configtest
sudo service nginx start
