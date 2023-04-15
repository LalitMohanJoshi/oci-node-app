#!/bin/bash

sudo cp -R /var/www/html/stage/. /var/www/html/prod
sudo chmod -R 777  /var/www/html

cd /var/www/html/prod/

sudo npm i --save 

#Application Start
sudo pm2 delete NodeServer
sudo pm2 cleardump

sudo pm2 start pm2-apps.json
sudo pm2 save
sudo pm2 startup