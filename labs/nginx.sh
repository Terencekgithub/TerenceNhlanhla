#!/bin/bash
echo "TERENCE KAMOGELO MOABI 221716971"
echo "NHLANHLA MAKOFANE 221920234"

echo "CHECK IF NGINX IS INSTALLED ON THE WEB SERVER"
systemctl is-active nginx

echo "IF NGINX IS INSTALLED, CHECK IF NGINX IS RUNNING IF NOT THEN START IT"
apt-get update
apt-get -y install nginx
systemctl start nginx

echo "CREATE A DIRECTORY CALLED LABS"
mkdir /var/www/html/labs
ls -ld /var/www/html/labs

echo "CHANGE OWNERSHIP OF DIRECTORY TO CURRENT USER"
chown terencenhlanhla:root /var/www/html/labs

echo "CREATE A SYMBOLIC LINK CALLED HTML UNDER HOME DIRECTORY"
ln -s /var/www/html/labs html
ls -l

echo "CREATE AN INDEX.html FILE"
cd html
touch index.html

echo "ADDING INFORMATION TO THE INEDX.HTML FILE"
nano index.html



