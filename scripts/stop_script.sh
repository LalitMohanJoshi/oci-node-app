#!/bin/bash

cd /var/www/html/prod/
sudo pm2 delete NodeServer

sudo systemctl stop httpd 
sudo systemctl status httpd

sudo chmod -R 777  /var/www/html