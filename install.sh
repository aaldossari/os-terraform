#!/bin/sh
sudo su
yum update -y
yum install httpd -y
chmod -R 777 /var/www/html
cd /var/www/html
wget https://raw.githubusercontent.com/chandradeoarya/dojo-jump/master/style.css
wget https://raw.githubusercontent.com/chandradeoarya/dojo-jump/master/main.js
wget https://raw.githubusercontent.com/chandradeoarya/dojo-jump/master/index.html
systemctl start httpd
systemctl enable httpd
