#!/bin/bash -xe

exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
 
# run command plugin user permission
echo "ocarun ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/101-oracle-cloud-agent-run-command

# Add User to Sudo Group
sudo usermod -aG wheel ocarun

# install packages

sudo yum update -y
sudo yum install epel-release -y
sudo yum install nodejs -y
sudo yum install npm -y
node --version
sudo npm i -g pm2
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd
echo "httpd status generate"

# manage selinux policy

# generate symlink , if not exist

sudo ln -sf /usr/local/bin/pm2 /usr/bin/pm2

sudo setsebool -P httpd_unified 1
hostname -I
echo "artifact dir generate" 
sudo mkdir -p -v /var/www/html/artifact/
echo "stage dir generate" 
sudo mkdir -p -v /var/www/html/stage/
echo "html dir 777 given" 
sudo chmod -R 777  /var/www/html
echo "<h1>Coming Soon</h1>" | sudo tee /var/www/html/index.html
echo "html dir 777 done" 
sudo yum install zip unzip -y
sudo rpm -q zip unzip
which zip unzip

netstat -ntlp

# enable ports in firewall 
# it doesn't work using cloud-init script

# sudo firewall-cmd --zone=public --permanent --add-port=80/tcp --add-port=443/tcp
# sudo firewall-cmd --reload
# sudo firewall-cmd --info-zone public
