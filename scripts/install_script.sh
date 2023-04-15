#!/bin/bash -xe

# delete zip artifact

cd /var/www/html/artifact/

# sudo rm buildArcFiles.zip -y

# create apacahe error logs

sudo mkdir -p /var/www/logs/
cd /var/www/logs/ 
sudo touch node-app-error.log
sudo chmod -R 777 /var/www/logs/

# create vhost config
 
sudo chmod -R 777 /etc/httpd/conf.d
sudo cp /var/www/html/stage/scripts/nodeAppVhost.conf  /etc/httpd/conf.d/nodeAppVhost.conf
 
# echo "<h1>Oracle Virtual Machine Working With Ci-Cd</h1>" | sudo tee /var/www/html/index.html

# enable ports in firewall

sudo firewall-cmd --zone=public --permanent --add-port=80/tcp --add-port=443/tcp
sudo firewall-cmd --reload
sudo firewall-cmd --info-zone public

# Create a Backup Directory

sudo rm -Rf /var/www/html/backup
sudo mkdir -p /var/www/html/backup 
sudo chmod -R 777  /var/www/html

PROD_DIR="/var/www/html/prod/" 

if [ "$(ls -A $PROD_DIR)" ]; then
    sudo cp -R /var/www/html/prod/. /var/www/html/backup
else
    echo "$DIR is Empty"
fi 
 
sudo rm -Rf /var/www/html/prod
sudo mkdir -p /var/www/html/prod
sudo chmod -R 777  /var/www/html