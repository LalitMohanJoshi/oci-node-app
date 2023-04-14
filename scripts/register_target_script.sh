#!/bin/bash -xe

sudo systemctl status httpd 
sudo systemctl restart httpd 
sudo systemctl status httpd

# enable revere proxy for localhost

setsebool -P httpd_can_network_connect on

sudo rm -Rf /var/www/html/stage
sudo rm -Rf /var/www/html/artifact

sudo mkdir -p -v /var/www/html/stage/
sudo mkdir -p -v /var/www/html/artifact/
sudo chmod -R 777  /var/www/html