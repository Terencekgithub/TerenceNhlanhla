#!/bin/bash
$sudo apt-get update
$sudo apt-get -y install nginx
$systemctl is-active nginx
$sudo systemctl start nginx
$systemctl is-active nginx
$sudo mkdir /var/www/html/labs
$ls -ld /var/www/html/labs
$sudo chown terencenhlanhla:root /var/www/html/labs
$ln -s /var/www/html/labs html
$ls -l
$cd html
$touch index.html
$nano index.html
